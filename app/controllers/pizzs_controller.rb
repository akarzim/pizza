# encoding: utf-8
class PizzsController < ApplicationController
  load_and_authorize_resource
  before_filter :require_login

  def index
    @pizzs = Pizz.includes(
      :ingredients,
    )
    respond_with @pizzs
  end

  def show
    respond_with @pizz
  end

  def new
    respond_with @pizz
  end

  def edit
    respond_with @pizz
  end

  def create
    if @pizz.save
      flash[:notice] = 'Pizz was successfully created.'
    else
      flash[:alert] = 'Please correct errors below to create a pizz.'
    end
    respond_with @pizz
  end

  def update
    if @pizz.update_attributes params[:pizz]
      flash[:notice] = 'Pizz has been successfully updated.'
    else
      flash[:alert] = 'Please correct errors below to update pizz.'
    end
    respond_with @pizz
  end

  def destroy
    @pizz.destroy
    redirect_to pizzs_url
  end
end
