class UsersController < ApplicationController
  def new
    @user = User.new
    # raise 
  end

  def create
  end
end
