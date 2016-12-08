require "httparty"

class RecipesController < ApplicationController


  def index

    # @recipes = Recipe.search(params[:search])

    @get_term = params[:search]
      if @get_term == nil
        @recipes == []
      elsif @get_term.empty?
        @recipes == []
      else
        @recipes = Recipe.for(@get_term)
<<<<<<< HEAD
    end

    # @get_id = params[:get]
    # @recipes = Recipe.for(@get_id)
=======
      end

>>>>>>> 955b96c0ca6027594f4a6e0be515e8d73b2236cc
  end


  def show
    @get_id = params[:id]
    @recipes = Recipe.get_recipe(@get_id)

  end


  def create

  end

end
