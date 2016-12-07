class RecipesController < ApplicationController

  def index

    @get_term = params[:looking_for] || 'chicken'
    @recipes = Recipe.for(@get_term)

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
