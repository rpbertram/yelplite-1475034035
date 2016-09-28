class RestaurantRatingsController < ApplicationController
  def index
    @restaurant_ratings = RestaurantRating.all
  end

  def show
    @restaurant_rating = RestaurantRating.find(params[:id])
  end

  def new
    @restaurant_rating = RestaurantRating.new
  end

  def create
    @restaurant_rating = RestaurantRating.new
    @restaurant_rating.restaurant_id = params[:restaurant_id]
    @restaurant_rating.avg_stars = params[:avg_stars]

    if @restaurant_rating.save
      redirect_to "/restaurant_ratings", :notice => "Restaurant rating created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant_rating = RestaurantRating.find(params[:id])
  end

  def update
    @restaurant_rating = RestaurantRating.find(params[:id])

    @restaurant_rating.restaurant_id = params[:restaurant_id]
    @restaurant_rating.avg_stars = params[:avg_stars]

    if @restaurant_rating.save
      redirect_to "/restaurant_ratings", :notice => "Restaurant rating updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant_rating = RestaurantRating.find(params[:id])

    @restaurant_rating.destroy

    redirect_to "/restaurant_ratings", :notice => "Restaurant rating deleted."
  end
end
