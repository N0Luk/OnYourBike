class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @bike = Bike.find(params[:bike_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @bike = Bike.find(params[:bike_id])
    @user = current_user
    @booking.bike = @bike
    @booking.user = @user
    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render 'edit'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:bike_id, :user_id, :start_date, :end_date)
  end
end
