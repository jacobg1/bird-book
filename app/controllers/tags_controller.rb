class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end
  
  def create
    @post = Post.find(params[:post_id])
    @place = @post.place
    @category = Category.find_or_create_by(category_text: params[:category_text])

    existing_tag = Tag.find_by(post: @post, category: @category)

    if !existing_tag
      @post.tags.create(category: @category)
    else
      flash[:alert] = 'Tag already exists'
    end
      redirect_to place_post_path(@place, @post)
    end

end
