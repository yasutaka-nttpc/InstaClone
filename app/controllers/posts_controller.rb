class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to posts_path, notice: "投稿しました"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @post.update(posts_params)

    redirect_to posts_path, notice: "編集しました"
  end

  def destroy
    @post.destroy

    redirect_to posts_path, notice: "削除しました"
  end

  def posts_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
