class GuessesController < ApplicationController
  def increase_score
    @guess = Guess.find(params[:id])
    @post = @guess.post
    @place = @post.place
    @guess.score_up
    @guess.save
    redirect_to place_post_path(@place, @post)
  end

  def decrease_score
    @guess = Guess.find(params[:id])
    @post = @guess.post
    @place = @post.place
    @guess.score_down
    @guess.save
    redirect_to place_post_path(@place, @post)
  end

  def new
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = @post.guesses.new
  end

  def create
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = @post.guesses.new(guess_params.merge(user: current_user))
    if @guess.save
      flash[:notice] = 'Comment posted!'
      redirect_to place_post_path(@place, @post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = Guess.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = Guess.find(params[:id])
    if @guess.user == current_user
      @guess.update(guess_params.merge(user: current_user))
      flash[:notice] = 'Comment updated!'
      redirect_to place_post_path(@place, @post)
    else
      flash[:alert] = 'Only OP can update comment!'
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @place = @post.place
    @guess = Guess.find(params[:id])
    if @guess.user == current_user
       @guess.destroy
       flash[:notice] = 'Comment deleted!'
       redirect_to place_post_path(@place, @post)
    else
       flash[:alert] = 'only OP can delete comment'
       redirect_to place_post_path(@place, @post)
    end
  end

  private
  def guess_params
    params.require(:guess).permit(:guess_text)
  end
end
