class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @order = Order.new
  end

  def create
    @order = Order.create!(order_params)
    #redirect_to @vehicle
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def check_user
    authorize Vehicle
  end

  def set_order
    @order = Order.find()
  end

  def order_params 
    return params.require(:order).permit(:address).merge(user: current_user, vehicle: vehicle)
  end

end


