class PostsController < ApplicationController
before_action :authenticate_user!
  def index; end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:notice] = "Post successfully created!"
      redirect_to root_path
    else
      render :new
      flash[:notice] = "There was a problem creating your post!"
    end
  end


  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end

end
