class ActivitiesController < ApplicationController
  
  def show
    @activity = Activity.find(params[:id])
    @booking = Booking.new

  def index
    @activities = Activity.all
  end
end
