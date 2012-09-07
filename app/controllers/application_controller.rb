class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_authenticated?
    !current_user.nil?
  end
  helper_method :user_authenticated?

  def current_user
    @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
  end
  helper_method :current_user

  def current_user=(user)
    session[:current_user_id] = user.id
    @current_user = user
  end
end
