class PostsController < ApplicationController
  def index
    @place = Place.find(params[:place_id])
    @posts = @place.posts.all
  end
  def show
    @place = Place.find(params[:place_id])
    @post = @place.posts.find(params[:id])
  end
end
