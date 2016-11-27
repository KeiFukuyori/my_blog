class PostsController < ApplicationController
  def index
    @posts = Post.all
    @new_posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    # フォーム用の空のインスタンスを生成
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to "/posts/#{@post.id}"
  
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end
  
  def post_params
    params.require(:post).permit(:title, :body, :category)
  end

  def destroy
  end
end
