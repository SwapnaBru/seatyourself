class RestaurantsController < ApplicationController

  def index
    if params[:restaurant_name]
      @restaurants = Restaurant.where("name LIKE ?","%#{params[:restaurant_name]}%")
        if @restaurants == []
          @restaurants = Restaurant.all
        end
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
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
