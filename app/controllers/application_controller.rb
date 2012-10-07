# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  respond_to :html, :json

  private
  def not_authenticated
    redirect_to login_url, :alert => "First login to access this page."
  end
end
