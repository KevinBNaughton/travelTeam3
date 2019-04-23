class BlogsController < ApplicationController
#  before_action :find_blog, only: [:show]#, :update, :destroy]

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blog = Blog.all
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
    # def find_blog
    #   @blog = Blog.find(params[:blog_id])
    # end

    def blog_params
      params.require(:blog).permit(:name,:image_url,:overallPrice,:origin,:destination,:startDate,:endDate,:overallDetails,:breakfast,:fitness,:smoking,:swimming,:parking,:wifi,:bar)
    end
end
