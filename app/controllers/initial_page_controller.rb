class InitialPageController < ApplicationController
  def home
    @blogs = Blog.all
  end

  def contact
  end

  def admin
    @requests = Request.all
    @blogs = Blog.all
  end

  #def post
  #  @blog = Blog.post
  #end

  def editBlog
    @blog = Blog.find(params[:blog_id])
  end

  def goHome
    redirect_to root_path
  end

  helper_method :goHome

end
