class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @stage = Stage.find(params[:stage_id])
    @booking.stage = @stage
    @booking.user = current_user
    #booking save
    if @booking.save
      redirect_to bookings_path, notice: 'Booking created'
    else
      render 'stages/show'
    end
  end

  def index
    @bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
