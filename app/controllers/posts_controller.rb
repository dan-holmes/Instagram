class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
  end

  def create
    post = Post.create!(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:picture, :caption)
  end
end
