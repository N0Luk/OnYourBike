class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @bikes = Bike.global_search(params[:query])
    else
      @bikes = Bike.all
    end
  end

  def show
    @bike = Bike.find(params[:id])
    @reservation = Booking.new
    @reservation.bike = @bike
  end


  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to @bike, notice: 'Bike was successfully created.'
    else
      render :new
    end
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    if @bike.update(bike_params)
      redirect_to @bike
    else
      render :edit
    end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path, status: :see_other
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:bike_type, :name, :price, :location, :photo)
  end
end
