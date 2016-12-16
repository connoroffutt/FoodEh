class ListsController < ApplicationController
  def add
    list = List.find_or_create_by(user: current_user)
    list.ingredients << Ingredient.find(params[:ingredient][:ingredient_id])

    redirect_to(user_path(current_user))
  end

  def destroy_ingredient
    list = List.find_by(user: current_user)
    ingredient = list.ingredients.find(params[:ingredient_id])
    list.ingredients.delete(ingredient)
    flash[:alert] = "ingredient removed from grocery list!"
    redirect_to (user_path(current_user))
  end
end
