class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    # フォーム用の空のインスタンスを生成
    @post = Post.new
  end

  def create
    @post = Post.new(pose_params)
    @post.save
    redirect_to "/posts/#{@post.id}"
  
  end

  def edit
  end

  def update
  end
  
  def post_params
    params.require(:post).permit(:title, :body, :category)
  end

  def destroy
  end
end
