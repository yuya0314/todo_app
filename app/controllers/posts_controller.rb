class PostsController < ApplicationController
  def new
  end
  def create
    @posts = Post.new(
      title:params[:title],
      memo:params[:memo])
    @posts.save
    redirect_to("/")
  end

  def index
    @posts = Post.all
  end
end
