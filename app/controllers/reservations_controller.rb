class ReservationsController < ApplicationController
  before_action :load_restaurant

  def index
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new

  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
       redirect_to restaurant_reservation_url
     else
       render 'edit'
     end
   end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_path
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    if @reservation.save
      render 'reservations/show'
    else
      # flash[:alert] = " Sorry, there are not enough seats availabe at the moment."
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
