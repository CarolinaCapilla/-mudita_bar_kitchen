class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.where(user_id: current_user.id)
    @station = Station.find(params[:station_id])
  end

  def show; end

  # @booking.kitchen.name
    # if current_user.chef
    #   @booking = Booking.where(user: user)
    # else
    #   @items = Item.all
    # end
  # end

  def new
    @station = Station.find(params[:station_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @station = Station.find(params[:station_id])
    @booking.station = @station
    @booking.user = current_user
    if @booking.save
      redirect_to station_bookings_path(@booking.station), notice: "Booking successfully created."
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to stations_path, notice: "booking successfully destroyed."
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :kitchen_id, :price)
  end
end
