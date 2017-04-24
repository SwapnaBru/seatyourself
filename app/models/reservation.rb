class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :time, :date, :seats, presence: true
  validate :seats_less_than_availability

   private

  def seats_less_than_availability
      available = self.restaurant.availability(time)
    if seats > available
       errors.add(:seats, "are more than restaurant's availibility")
     end
  end

end
