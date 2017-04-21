class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :user

  validates :name, :time_open, :time_close, :address, :city, presence: true
  validates :postal_code, :capacity, presence: true

  validates :price_range, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

end
