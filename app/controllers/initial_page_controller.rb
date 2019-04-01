class InitialPageController < ApplicationController
  def home
    @blogs = Blog.all
  end

  def contact
  end

  def admin
  end

  def post
  end



end
