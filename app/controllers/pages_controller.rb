# encoding: utf-8
class PagesController < ApplicationController

  def index
    if not logged_in?
      session[:visited_welcome_page] = true
      render
    else
      redirect_to show_user_url
    end
  end
end
