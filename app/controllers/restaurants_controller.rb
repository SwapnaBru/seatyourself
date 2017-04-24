class RestaurantsController < ApplicationController

  def index
    if (params[:restaurant_name] != "") and (params[:restaurant_city] != "")
      @restaurants = Restaurant.where("name LIKE ? AND city LIKE ?","%#{params[:restaurant_name]}%", "%#{params[:restaurant_city]}%")
      if @restaurants = []
        @restaurants = Restaurant.all
        flash[:notice] = "Sorry, we did not find results matching your search. Here is a list of all the restaurants in #{params[:restaurant_city]}."
      end
    else
      render 'home/index'
      flash[:alert] = "Please enter valid inputs"
    end

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # if current_user
    @reservation = @restaurant.reservations.build
    # end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to restaurants_url
      else
        render :new
      end
  end


  def edit
  end


private
 def restaurant_params
      params.require(:restaurant).permit(:name,:time_close, :time_open, :address, :city, :postal_code, :image,
      :user_id, :cuisine_id, :capacity, :price_range)
 end
end
