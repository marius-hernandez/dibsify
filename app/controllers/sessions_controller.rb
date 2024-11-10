class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:uuid]=user.uuid
      redirect_to root_path
    else
      flash.now[:alert]="Invalid email or password"
      render :new
    end
  end

  def destroy
    session.delete(:uuid)
    flash[:notice] = "Logged out successfully"
    redirect_to login_path
  end
end
