class HomeController < ApplicationController
  def index
    @all_posts = Post.order('created_at DESC')
  end
end
