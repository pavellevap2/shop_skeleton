class BlogThreads::PostsController < ApplicationController
  before_action :set_thread
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = @blog_thread.posts
  end

  def show
    @post = @blog_thread.posts.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :blog_thread_id)
  end

  def set_thread
    @blog_thread = BlogThread.find(params[:blog_thread_id])
  end
end
