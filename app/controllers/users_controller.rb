class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
#    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      log_in @user
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
  # I put create and delete session in case you need it later
  #def create
  #  user = User.find_by_username(params[:session][:username])
  #  if user && user.authenticate(params[:session][:password])
  #      login user
  #      flash[:success] = "Anda berhasil login"
  #      redirect_to yours_path
  #  else
  #      flash.now[:error] = 'sorry cannot login'
  #      render 'new'
  #  end
  #end
#
#  def destroy
#    session[:user_id] = nil
#    flash[:success] = "Log out"
#    redirect_to root_url
#  end
end
