class PagesController < ApplicationController
  def home
    # Need to be filter by number_of_bookings after
    @activities = Activity.first(6)
    # @categories = ["sports sensations", "sports nautiques", "mécanique", "ludique", "activités extérieures", "bien-être"]
    @categories = [ { name: "sports sensations", photo: "https://images.unsplash.com/photo-1471247511763-88a722fc9919?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2690&q=80"},
     { name: "sports nautiques", photo: "https://images.unsplash.com/photo-1552673597-e3cd6747a996?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1947&q=80" },
     { name: "mécanique", photo: "https://images.unsplash.com/photo-1505570554449-69ce7d4fa36b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" },
     { name: "ludique", photo: "https://images.unsplash.com/photo-1551537661-210e318af89e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" },
     { name: "activités extérieures", photo: "https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" },
     { name: "bien-être", photo: "https://images.unsplash.com/photo-1544161515-4ab6ce6db874?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80" } ]
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
