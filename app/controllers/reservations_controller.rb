class ReservationsController < ApplicationController
  before_action :load_restaurant

  def index
  end

  def show
    @review = Review.find(params[:id])
  end

  def new

  end

  def edit
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
      # @review.user = current_user
      if @reservation.save
        render 'reservations/show'
      else
        render 'restaurants/show'
      end
    end

  private
  def reservation_params
    params.require(:reservation).permit(:restaurant_id, :date, :time, :seats)
  end

  def load_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
