class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    if @booking.save
      redirect_to activity_path(@activity)
    else
      render "activities/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_time, :number_of_participants)
  end
end
