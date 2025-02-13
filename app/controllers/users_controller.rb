class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def create
    @user=User.new(user_params)
    if @user.save
      flash[:notice]="Signup successfully"
      redirect_to login_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
