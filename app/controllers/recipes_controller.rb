require "httparty"

class RecipesController < ApplicationController


  def index

    # @recipes = Recipe.search(params[:search])


    # @get_term = params[:looking_for] || 'chicken'
    # @recipes = Recipe.for(@get_term)

    @get_term = params[:search]
      if @get_term == nil
        @recipes == []
      elsif @get_term.empty?
        @recipes == []
      else
        @recipes = Recipe.for(@get_term)
      end

  end

  def show
    @get_id = params[:id]
    @recipes = Recipe.get_recipe(@get_id)
    # @recipe_ingredients = @recipes["ingredients"]
  end


  def create

  end

end
