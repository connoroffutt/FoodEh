class FavoritesController < ApplicationController
before_action :require_login

  def create

      favorite = Favorite.new
      favorite.user = current_user
      favorite.recipe = Recipe.find(params["recipe_id"])
      if favorite.save
        flash[:alert] = "Saved to favorites!"
        redirect_to :back
      else
        flash[:alert] = "Unable to save to favorites!"
        redirect_to (root_path)
      end

  end

  def show
    @favorites = Favorite.find(params[:id])
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    flash[:alert] = "Recipe removed from favorites!"
    redirect_to (user_path)
  end


end
