# encoding: utf-8
class IngredientsController < ApplicationController
  load_and_authorize_resource
  before_filter :require_login

  def index
    @ingredients = Ingredient.all
    respond_with @ingredients
  end

  def show
    respond_with @ingredient
  end

  def new
    respond_with @ingredient
  end

  def edit
    respond_with @ingredient
  end

  def create
    if @ingredient.save
      flash[:notice] = 'Ingredient was successfully created.'
    else
      flash[:alert] = 'Please correct errors below to create a ingredient.'
    end
    respond_with @ingredient
  end

  def update
    if @ingredient.update_attributes params[:ingredient]
      flash[:notice] = 'ingredient has been successfully updated.'
    else
      flash[:alert] = 'Please correct errors below to update ingredient.'
    end
    respond_with @ingredient
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_url
  end
end
