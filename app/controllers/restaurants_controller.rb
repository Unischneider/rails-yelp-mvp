class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(name: params[:name], address: params[:address], category: params[:category], phone_number: params[:phone_number])

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
