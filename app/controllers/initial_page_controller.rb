class InitialPageController < ApplicationController
  def home
    @blogs = Blog.all
  end

  def contact
  end

  def admin
    @requests = Request.all
  end

  def post
    @blog = Blog.find(1)
  end



end
