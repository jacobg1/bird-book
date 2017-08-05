class GuessesController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
    @guesses = @post.guesses.all
  end
end
