class PagesController < ApplicationController
  def home
    # Need to be filter by number_of_bookings after
    @activities = Activity.first(6)
  end
end
