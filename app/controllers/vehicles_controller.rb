class VehiclesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show] #you need to signin before doing anything 
  before_action :check_user_auth
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

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

  def create
    @vehicle = Vehicle.create!(vehicle_params)
    redirect_to @vehicle
  end

  def edit
  end

  def update
    @vehicle.update!(vehicle_params)
    redirect_to @vehicle
  end

  def destroy
    begin 
      @vehicle.destroy
      redirect_to vehicles_path
    rescue
      flash[:alert] = "You have an order to finish. You can delete the vehicle after you finish the order"
      redirect_to @vehicle
    end
  end

  private
  def check_user_auth
    authorize Vehicle
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params 
    return params.require(:vehicle).permit(:plate_number, :make, :size, :location, :wheelchair_hoist, :status).merge(user: current_user)
  end
end
