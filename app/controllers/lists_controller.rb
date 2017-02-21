class ListsController < ApplicationController
  def add
    list = List.find_or_create_by(user: current_user)
    list.ingredients << Ingredient.find(params[:ingredient][:ingredient_id])
  end

  def destroy_ingredient
    list = List.find_by(user: current_user)
    ingredient = list.ingredients.find(params[:ingredient_id])
    list.ingredients.delete(ingredient)
  end

  def destroy
    current_user.list.destroy
    flash[:success] = "List Deleted."
    redirect_to user_path
  end

  def show
    list = List.find_by(user: current_user)
    render :layout => false
  end
end
