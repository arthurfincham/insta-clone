class HomeController < ApplicationController
  def index
    @all_posts = if params[:tag]
        Post.tagged_with(params[:tag]).order("created_at DESC")
      else
        Post.order("created_at DESC")
      end
    @comment = Comment.new(post_id: params[:post_id])
  end

  def tag_page
    @posts = Post.all
  end

  def show
  end

  def showCards
    @all_posts = current_user.posts.order("created_at DESC")
  end
end
