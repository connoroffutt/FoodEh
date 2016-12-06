class RecipesController < ApplicationController

  def index

    # @recipes = Recipe.search(params[:search])

    @search_term = params[:looking_for] || 'chocolate'
    @recipes = Recipe.for(@search_term)

  end

  def show
    #code
  end

end
