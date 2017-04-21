class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :date_time, :seats, presence: true
end
