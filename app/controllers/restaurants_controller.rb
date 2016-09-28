class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.name = params[:name]
    @restaurant.city = params[:city]
    @restaurant.state = params[:state]
    @restaurant.address = params[:address]
    @restaurant.zipcode = params[:zipcode]
    @restaurant.description = params[:description]
    @restaurant.website = params[:website]
    @restaurant.photo_url = params[:photo_url]
    @restaurant.neighborhood = params[:neighborhood]

    if @restaurant.save
      redirect_to "/restaurants", :notice => "Restaurant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.name = params[:name]
    @restaurant.city = params[:city]
    @restaurant.state = params[:state]
    @restaurant.address = params[:address]
    @restaurant.zipcode = params[:zipcode]
    @restaurant.description = params[:description]
    @restaurant.website = params[:website]
    @restaurant.photo_url = params[:photo_url]
    @restaurant.neighborhood = params[:neighborhood]

    if @restaurant.save
      redirect_to "/restaurants", :notice => "Restaurant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy

    redirect_to "/restaurants", :notice => "Restaurant deleted."
  end
end
