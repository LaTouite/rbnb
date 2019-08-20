class PagesController < ApplicationController
  def home
    # Need to be filter by number_of_bookings after
    @activities = Activity.first(6)
  end

  def my_activities
    @activities = current_user.activities
    sum = 0
    @activities.each do |activity|
      number_booking = activity.bookings.length
      sum += number_booking
    end
  end
end
