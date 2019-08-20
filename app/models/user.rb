class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :username, presence: true, uniqueness: true
  # validates :address, presence: true
  # validates :phone_number, presence: true, format: { with: /(06|07)\d{8}/ }
end
