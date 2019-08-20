class ApplicationController < ActionController::Base

  def index
    @activities = Activity.all
  end
end
