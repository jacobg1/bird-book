class PostsController < ApplicationController
  def index
    @place = Place.find(params[:place_id])
    @posts = @place.posts.all
  end
end
