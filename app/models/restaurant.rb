class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :user
  belongs_to :cuisine

  validates :name, :time_open, :time_close, :address, :city, presence: true
  validates :postal_code, :capacity, presence: true

  validates :price_range, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  # private

  def total_seats_reserved(time, date)
    reserved = self.reservations.where(time: time, date: date)
    sum = 0
    reserved.each do |reserve|
      sum += reserve.seats
    end
    return sum
  end

  def availability(time, date)
    seats_taken = self.total_seats_reserved(time, date)
    @seats_available = self.capacity - seats_taken
  end

end
