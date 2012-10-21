# encoding: utf-8
class UsersController < ApplicationController
  load_and_authorize_resource
  before_filter :require_login

  def index
    @users = User.all

    respond_with @users
  end

  def show
    respond_with @user
  end

  def new
    respond_with @user
  end

  def edit
    respond_with @user
  end

  def create
    if @user.save
      flash[:notice] = 'User was successfully created.'
    else
      flash[:alert] = 'Please correct errors below to create a user.'
    end
    respond_with @user
  end

  def update
    if @user.update_attributes params[:user]
      flash[:notice] = 'User has been successfully updated.'
    else
      flash[:alert] = 'Please correct errors below to update user.'
    end
    respond_with @user
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end
end
