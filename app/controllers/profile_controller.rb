class ProfileController < ApplicationController
  def index
    @user=current_user
    @posts=current_user.posts
  end

  def update
    if @user.update(post_params)
      redirect_to root_path, notice: "Post was successfully updated."
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:profile).permit(:avatar)
  end
end
