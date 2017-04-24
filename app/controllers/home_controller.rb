class HomeController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @user = user.find(params[:user_id])
  end
end
