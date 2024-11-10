class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :current_user, :logged_in?
  before_action :set_current_user

  def current_user
    @user ||= User.find(session[:uuid]) if session[:uuid]
  end

  def logged_in?
    current_user.present?
  end

  private
  def set_current_user
    @user = current_user
  end
end
