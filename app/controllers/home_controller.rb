class HomeController < ApplicationController
  def index
    @all_posts = Post.order('created_at DESC')
    @comment = Comment.new(post_id: params[:post_id])
  end
end
