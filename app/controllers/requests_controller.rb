class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def request_params
    params.require(:request).permit(:userName,:startDate, :endDate, :overallPrice, :numberAdults, :numberChildren, :overallDetails, :origin, :destination)
  end

  def goHome
    redirect_to root_path
  end

  helper_method :goHome

end
