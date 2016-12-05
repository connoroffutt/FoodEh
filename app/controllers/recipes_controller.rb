class RecipesController < ApplicationController

  has_many :ingredients
  belongs_to :ingredients
  has_many :users through: :favourites

end
