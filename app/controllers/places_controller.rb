class PlacesController < ApplicationController
  #index
  def index
    @places = Place.all
  end
  #new
  def new
    @place = Place.new
  end
  #create
  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end
  #edit
  def edit
    @place = Place.find(params[:id])
  end
  #update
  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
    flash[:notice] = 'Place Updated'
    redirect_to places_path
  end
  #destroy
  def destroy
    @place = Place.find(params[:id])
    @place.destroy!
    flash[:alert] = "Place Deleted!"
    redirect_to places_path
  end
  private
  def place_params
    params.require(:place).permit(:country, :state, :city, :place_photo_url)
  end
end
