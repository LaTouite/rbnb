class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :nullify

  CATEGORIES = ["sports sensations", "sports nautiques", "activités extérieures", "bien-être", "loisirs créatifs"]

  validates :title, presence: true
  validates :description, presence: true
  validates :unit_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :schedule, presence: true
  validates :min_number_of_participants, presence: true, numericality: { greater_than_or_equal_to:1 }
  validates :max_number_of_participants, presence: true, numericality: { greater_than_or_equal_to: min_number_of_participants }
  validates :min_age, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :max_sessions, presence: true
end
