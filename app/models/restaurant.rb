class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :user
  belongs_to :cuisine

  validates :name, :time_open, :time_close, :address, :city, presence: true
  validates :postal_code, :capacity, presence: true

  validates :price_range, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  def total_seats_reserved
    sum = 0
    self.reservations.each do |reserve|
      sum += reserve.seats
    end
    return sum
  end

  def availability
    seats_taken = self.total_seats_reserved
    @seats_available = self.capacity - seats_taken
  end

end
