
class RecipesController < ApplicationController

  def index
    # binding.pry
    @get_term = params[:search]
      if @get_term == nil
        @recipes == []
      elsif @get_term.empty?
        @recipes == []
      else
        @recipes = Recipe.for(@get_term)
        # binding.pry
      end
  end

  def show
    @get_id = params[:id]
    # @recipes = Recipe.get_recipe(@get_id)
    @recipe = Recipe.get_recipe(@get_id)
  end

  def create

  end

end
