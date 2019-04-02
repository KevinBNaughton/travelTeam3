class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      # Handle a successful save.
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:name, :overallPrice,:origin,:destination,:startDate,:endDate,:overallDetails)

    end


end
