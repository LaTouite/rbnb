class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find(params[:id])
    @booking = Booking.new
  end
end
