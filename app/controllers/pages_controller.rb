# encoding: utf-8
class PagesController < ApplicationController

  def index
    if not logged_in?
      session[:visited_welcome_page] = true
      render
    else
      redirect_to current_user
    end
  end
end
