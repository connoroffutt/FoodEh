require "httparty"

class RecipesController < ApplicationController


  def index

    # @recipes = Recipe.search(params[:search])


    @get_term = params[:looking_for] || 'chicken'
    @recipes = Recipe.for(@get_term)

    @get_term = params[:search]
      if @get_term == nil
        @recipes == []
      elsif @get_term.empty?
        @recipes == []
      else
<<<<<<< HEAD
    @recipes = Recipe.for(@get_term)
      end
=======
        @recipes = Recipe.for(@get_term)
      end

  end
>>>>>>> 955b96c0ca6027594f4a6e0be515e8d73b2236cc

  end

  def show
    @get_id = params[:id]
    @recipes = Recipe.get_recipe(@get_id)
<<<<<<< HEAD
    
    # @get_id = params[:get]
    # @recipes = Recipe.for(@get_id)
=======

>>>>>>> 955b96c0ca6027594f4a6e0be515e8d73b2236cc
  end


  def create

  end

end
