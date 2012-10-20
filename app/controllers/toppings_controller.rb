# encoding: utf-8
class ToppingsController < ApplicationController
  load_and_authorize_resource
  before_filter :require_login

  def index
    @toppings = Topping.all
    respond_with @toppings
  end

  def show
    respond_with @topping
  end

  def new
    respond_with @topping
  end

  def edit
    respond_with @topping
  end

  def create
    if @topping.save
      flash[:notice] = 'Topping was successfully created.'
    else
      flash[:alert] = 'Please correct errors below to create a topping.'
    end
    respond_with @topping
  end

  def update
    if @topping.update_attributes params[:topping]
      flash[:notice] = 'topping has been successfully updated.'
    else
      flash[:alert] = 'Please correct errors below to update topping.'
    end
    respond_with @topping
  end

  def destroy
    @topping.destroy
    redirect_to toppings_url
  end
end
