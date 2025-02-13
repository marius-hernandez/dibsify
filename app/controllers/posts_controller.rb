class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy ]

  def index
    if !user_signed_in?
      redirect_to login_path, alert: "You must login"
    end
    @posts= Post.all.order(created_at: :desc)
    # equivalent to new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, notice: "Post was successfully created."
    else
      render :index
    end
  end

  def update
    if @post.update(post_params)
      redirect_to root_path, notice: "Post was successfully updated."
    else
      render :edit
    end
  end

  def show
  end

  # GET /:id/edit
  def edit
  end

  # DELETE /posts/:id
  def destroy
    @post.comments.destroy_all
    @post.destroy
    redirect_to root_path, notice: "Post was successfully destroyed."
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, pictures: [])
  end
end
