class CommentsController < ApplicationController
  before_action :set_post

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  @comment.user_id = current_user.id #or whatever is you session name
  if @comment.save
    redirect_to root_path
  else
    flash.now[:danger] = "error"
  end
end


  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end
end


