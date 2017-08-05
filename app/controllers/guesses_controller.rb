class GuessesController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
    @guesses = @post.guesses.all
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

  private
  def guess_params
    params.require(:guess).permit(:guess_text)
  end
end
