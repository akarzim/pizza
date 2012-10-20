class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    respond_to do |format|
      if @user = login(params[:email], params[:password], params[:remember_me])
        format.html { redirect_back_or_to(url_for(controller: :users, action: "show", id: current_user.id), notice: 'Login successfull.') }
        format.xml { render xml: @user, status: :created, location: @user }
      else
        format.html { flash.now[:alert] = "Login failed."; render action: "new" }
        format.xml { render xml: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    logout
    redirect_to :login, notice: 'Logged out!'
  end

end
