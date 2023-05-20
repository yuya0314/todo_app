class PostsController < ApplicationController
  def new
  end
  def create
    @posts = Post.new(
      title:params[:title],
      memo:params[:memo],
      begin:params[:begin],
      last:params[:last],
      alltime:params[:alltime]
      )
    @posts.save
    redirect_to("/")
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id:params[:id])
  end
  def edit
    @post = Post.find_by(id:params[:id])
  end
  def update
    @post = Post.find_by(id:params[:id])
    @post.title = params[:title]
    @post.memo = params[:memo]
    @post.save
    redirect_to("/")
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/")
  end

end
