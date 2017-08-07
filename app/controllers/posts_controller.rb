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
        redirect_to place_post_path(@place, @post)
      else
        render :new
      end
  end

  def show
    @place = Place.find(params[:place_id])
    @post = @place.posts.find(params[:id])
    @tags = @post.tags
  end

  def edit
    @place = Place.find(params[:place_id])
    @post = Post.find(params[:id])
  end

  def update
    @place = Place.find(params[:place_id])
    @post = Post.find(params[:id])
      if @post.update(post_params)
        flash[:notice] = 'Post Updated'
        redirect_to place_posts_path(@place)
      else
        render :new
      end
  end

  def destroy
    @place = Place.find(params[:place_id])
    @post = Post.find(params[:id])
    @post.destroy
    flash[:alert] = "Post Deleted!"
    redirect_to place_posts_path(@place)
  end

  private
  def post_params
    params.require(:post).permit(:title, :photo_url)
  end
end
