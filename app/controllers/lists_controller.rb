class ListsController < ApplicationController
  def add
    list = List.find_or_create_by(user: current_user)
    list.ingredients << Ingredient.find(params[:ingredient][:ingredient_id])
  end
end
