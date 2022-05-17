class OrdersController < ApplicationController

  before_action :authenticate_user!
  before_action :check_user_auth
  before_action :set_order, only: [:show, :update, :destroy]
  before_action :set_vehicle, only: [:new]

  def index
    @vehicles = current_user.vehicles
    @orders = current_user.orders
  end

  def new
    @order = Order.new
  end

  def create 
    @order = Order.create!(order_params)
    redirect_to orders_path
  end

  def show

  end

  def destroy
    @order.destroy
    redirect_to root_path
  end

  private

  def check_user_auth
    authorize Order
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    return params.require(:order).permit(:address, :user_id, :vehicle_id)
  end
end


