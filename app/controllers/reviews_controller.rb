class ReviewsController < ApplicationController
  before_action :load_recipe

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @recipe.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to recipes_url, notice: 'Review created successfully'
    else
      render 'recipe/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:comment, :recipe_id)
  end
  def load_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
