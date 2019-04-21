class UsersController < ApplicationController

  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def show
    @user = User.find(params[:id])
  end

  def index
    current_user=User.find_by_email(session[:email])
  end

  def new
    @user = User.new
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

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def logged_in_user
        unless logged_in?
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
  end

  def correct_user
      @user = current_user
      redirect_to(root_url) unless current_user?(@user)
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
