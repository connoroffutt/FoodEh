class FavoritesController < ApplicationController

  def create

    if current_user
      # current_user.favorites << @recipes
      favorite = Favorite.new
      flash[:alert] = "Saved to favorites!"
      redirect_to (root_path)
    else
      flash[:alert] = "Unable to save to favorites!"
      redirect_to (root_path)
    end

  end

end
