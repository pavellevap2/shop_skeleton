class BlogThreadsController < ApplicationController
  before_action :set_blog_thread, except: [:index]

  def index
    @blog_threads = BlogThread.all
  end

  def new
    @blog_thread = BlogThread.new
  end

  def create
   @blog_thread = BlogThread.new blog_thread_params
    if @blog_thread.save
      redirect_to @blog_thread
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @blog_thread.update blog_thread_params
      redirect_to @blog_thread
    else
      render 'edit'
    end
  end

  def destroy
    @blog_thread.destroy
  end

  private

  def blog_thread_params
    params.require(:blog_thread).permit(:title, posts_attributes: [:title, :body])
  end

  def set_blog_thread
    @blog_thread = BlogThread.find(params[:id])
  end
end
