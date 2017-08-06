class GuessesController < ApplicationController
  def index

  end

  def show
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = Guess.find(params[:id])
    @guesses = Guess.all
    redirect_to place_post_path(@place, @post)
  end

  def new
    @post = Post.find(params[:post_id])
    @guess = @post.guesses.new
  end

  def create
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = @post.guesses.create(guess_params)
    redirect_to place_post_path(@place, @post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @guess = Guess.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = Guess.find(params[:id])
    @guess.update(guess_params)
    redirect_to place_post_path(@place, @post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = Guess.find(params[:id])
    @guess.destroy
    redirect_to place_post_path(@place, @post)
  end

  private
  def guess_params
    params.require(:guess).permit(:guess_text)
  end
end
