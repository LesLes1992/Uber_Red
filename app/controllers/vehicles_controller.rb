class VehiclesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show] #you need to signin before doing anything 
  before_action :check_user_auth
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  def index
    if (user_signed_in? )&& (current_user.has_role? :driver)
      @vehicles = current_user.vehicles
    else
      @vehicles = Vehicle.all
    end
  end

  def show
  end

  def new
    @vehicle = Vehicle.new
  end

  def booking
  end

  def create
    if (current_user.vehicles == []) && (current_user.has_role? :driver)
      @vehicle = Vehicle.create(vehicle_params)
      if @vehicle.valid?
        redirect_to @vehicle
      else
        flash.now[:alert] = @vehicle.errors.full_messages.join('<br>')
        render 'new'
      end   
    else
      redirect_to root_path
      flash[:alert] = "As a driver, you can only have one vehicle at same time"
    end
  end

  def edit
  end

  def update
    begin
      @vehicle.update!(vehicle_params)
      redirect_to @vehicle
    rescue
      flash[:alert] = @vehicle.errors.full_messages.join('<br>').html_safe
      render 'edit'
    end
  end

  def destroy
    begin
      @vehicle.destroy
      redirect_to root_path
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
    return params.require(:vehicle).permit(:plate_number, :make, :size, :location, :wheelchair_hoist, :status, :vehicle_image).merge(user: current_user)
  end
end
