class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :time, :date, :seats, presence: true
end
