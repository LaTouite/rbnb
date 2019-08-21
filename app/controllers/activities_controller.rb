class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find(params[:id])
    @booking = Booking.new
  end

  def index
    # @activities = Activity.all
    if params[:query].present?
      @activities = Activity.where(category: params[:query])
    else
      @activities = Activity.all
    end
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(params_activity)
    @activity.user = current_user
    @activity.save
    redirect_to activity_path(@activity)
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(params_activity)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to my_activities_path
  end

  private

  def params_activity
    params.require(:activity).permit(:title, :description, :unit_price, :category, :schedule, :min_number_of_participants, :max_number_of_participants, :min_age, :duration, :max_sessions, :address, :zipcode, :city, :main_photo, :second_photo)
  end
end
