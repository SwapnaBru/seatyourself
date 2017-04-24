class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :time, :date, :seats, presence: true
  #  validate :seats_less_than_availability
  # #
  #  private
  # #
  # def seats_less_than_availability
  #   #  available = Reservation.where('restaurant_id ?' , restaurant_id).last.availability
  #     available = Reservation.last.restaurant.availability
  #   if seats > available
  #      errors.add(:seats, "should be less than restaurant's availibility")
  #    end
  # end

end
