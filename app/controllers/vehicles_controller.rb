class VehiclesController < ApplicationController

  # before_action :check_auth
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy, :booking, :cancel_booking]

  def index
    @vehicles = Vehicle.all
  end

  def show
  end

  def new
    @vehicle = Vehicle.new
  end

  def booking
  end

  def cancel_booking
  end

  def create
    @vehicle = Vehicle.create!(vehicle_params)
    redirect_to @vehicle
  end

  

  def edit
  end

  def update
    @vehicle = Vehicle.update!(vehicle_params)
    redirect_to @vehicle
  end

  def destroy
    @vehicle.destroy
    redirect_to vehicles_path
  end

  private
  # def check_auth
  #   authorize Vehicle
  # end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params 
    return params.require(:vehicle).permit().merge(user: current_user)
  end
end
