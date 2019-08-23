class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity

  # Si la reservation est validee
    if @booking.save
      redirect_to my_activities_path
  # Si la reservation n'est pas validee
    else
    # On redefinit les markers pour la map
    # car on est redirigé vers une instance de booking
    # (on quitte donc le controller de activities
    # pour aller dans le controller de bookings)
      @markers = [ {lat: @activity.latitude,
        lng: @activity.longitude} ]
      render "activities/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_time, :number_of_participants)
  end
end
