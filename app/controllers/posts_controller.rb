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
      if @posts.memo == 0
      end
     if @posts.save
       redirect_to("/")
     else flash[:notice] ="入力内容を確認してくだい"
      render("/posts/new")
     end
  end

  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find_by(id:params[:id])
  end
  def edit
    @posts = Post.find_by(id:params[:id])
  end
  def update
    @posts = Post.find_by(id:params[:id])
    @posts.title = params[:title]
    @posts.memo = params[:memo]
    if @posts.save
      redirect_to("/")
    else 
      flash[:notice] = "入力内容を確認してください"
      redirect_to("/posts/@posts.id.edit")
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/")
  end

end
