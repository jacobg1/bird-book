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
  #edit
  #update
  #destroy
  private
  def place_params
    params.require(:place).permit(:country, :state, :city, :place_photo_url)
  end
end
