class RecipesController < ApplicationController

  def index

    # @recipes = Recipe.search(params[:search])

    @get_term = params[:search]
      if @get_term.empty?
        @recipes = []
      else
    @recipes = Recipe.for(@get_term)
    end
  end

  def show
    
  end

  def create

  end


end
