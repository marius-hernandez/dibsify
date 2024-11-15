class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment=@post.comments.build(comment_params)
    @comment.user= current_user
    if @comment.save
      redirect_to root_path, notice: "Comment was successful"
    else
      redirect_to root_path, alert: "Failed to save comment"

    end
  end

  private
  def set_post
    @post=Post.find(params[:post_id])
  end
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
