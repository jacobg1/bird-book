class PostsController < ApplicationController
  def index
    @place = Place.find(params[:place_id])
    @posts = @place.posts.all
  end

  def new
    @place = Place.find(params[:place_id])
    @post = @place.posts.new
  end

  def create
    @place = Place.find(params[:place_id])
    @post = @place.posts.new(post_params)
    if @post.save
      flash[:notice] = 'Post Created'
    redirect_to place_posts_path(@place)
  else
    flash[:alert] = "can't be blank"
    redirect_to new_place_post_path(@place)
  end
  end

  def show
    @place = Place.find(params[:place_id])
    @post = @place.posts.find(params[:id])
  end

  def edit
    @place = Place.find(params[:place_id])
    @post = Post.find(params[:id])
  end

  def update
    @place = Place.find(params[:place_id])
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to place_posts_path(@place)
  end

  def destroy
    @place = Place.find(params[:place_id])
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to place_posts_path(@place)
  end

  private
  def post_params
    params.require(:post).permit(:title, :photo_url)
  end
end
