class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  before_save :default_values

  # validates :date_time, presence: true, not_in_past: true
  validates :number_of_participants, presence: true

  private

  def default_values
    self.total_price = self.number_of_participants * self.activity.unit_price
  end
end
