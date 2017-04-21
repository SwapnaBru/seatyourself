class RestaurantsController < ApplicationController
  def index
    if params[:restaurant_name] or params[:restaurant_city]
      @restaurants = []
      @restaurants << Restaurant.find_by(name: params[:restaurant_name])

    else
      @restaurants = Restaurant.all
    end
  end

  def show
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
