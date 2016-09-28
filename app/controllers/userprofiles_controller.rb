class UserprofilesController < ApplicationController
  def index
    @userprofiles = Userprofile.all
  end

  def show
    @userprofile = Userprofile.find(params[:id])
  end

  def new
    @userprofile = Userprofile.new
  end

  def create
    @userprofile = Userprofile.new
    @userprofile.firstname = params[:firstname]
    @userprofile.lastinitial = params[:lastinitial]
    @userprofile.avg_rating_given = params[:avg_rating_given]
    @userprofile.review_id = params[:review_id]
    @userprofile.user_id = params[:user_id]

    if @userprofile.save
      redirect_to "/userprofiles", :notice => "Userprofile created successfully."
    else
      render 'new'
    end
  end

  def edit
    @userprofile = Userprofile.find(params[:id])
  end

  def update
    @userprofile = Userprofile.find(params[:id])

    @userprofile.firstname = params[:firstname]
    @userprofile.lastinitial = params[:lastinitial]
    @userprofile.avg_rating_given = params[:avg_rating_given]
    @userprofile.review_id = params[:review_id]
    @userprofile.user_id = params[:user_id]

    if @userprofile.save
      redirect_to "/userprofiles", :notice => "Userprofile updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @userprofile = Userprofile.find(params[:id])

    @userprofile.destroy

    redirect_to "/userprofiles", :notice => "Userprofile deleted."
  end
end
