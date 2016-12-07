class RecipesController < ApplicationController

  def index

    # @recipes = Recipe.search(params[:search])

    @get_term = params[:looking_for] || 'chicken'
    @recipes = Recipe.for(@get_term)

  end

  def show
    #code
  end

end
