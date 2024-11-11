class ProfileController < ApplicationController
  before_action :require_login
  def index
    @posts = current_user.posts
  end

  def require_login
    unless logged_in?
      redirect_to login_path, alert: "Oops! You're not login yet."
    end
  end
end
