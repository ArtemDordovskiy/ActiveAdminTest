class BlogsController < ApplicationController
  before_filter :authenticate_user!

  def index

  end

  def new
    @blog = Blog.new
  end

  def create
    puts current_user
    puts
    if Blog.create(params[:blog])
      redirect_to blogs_url
    else
      render :new
    end
  end
end
