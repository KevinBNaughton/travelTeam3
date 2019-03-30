class BlogsController < ApplicationController

  def create
    @blog = Blog.new(blog_params)
  end

  private
    def blog_params
      params.require(:blog).permit(:tripName, :overallPrice)

    end


end
