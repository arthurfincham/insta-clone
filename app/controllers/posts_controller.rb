class PostsController < ApplicationController
before_action :authenticate_user!
  def index; end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.user = current_user
    arr = @post.caption.scan(/#\w+/).flatten
    arr.each do |tag|
      @post.tag_list.add(tag)
    end
    if @post.save
      flash[:notice] = "Post successfully created!"
      redirect_to root_path
    else
      render :new
      flash[:notice] = "There was a problem creating your post!"
    end
  end

  def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to root_path, :notice => "Your post has been deleted"
end


  private

  def post_params
    params.require(:post).permit(:caption, :image, :tag_list)
  end


end


