class IngredientsController < ApplicationController

  has_many :recipes
  belongs_to :recipes
  belongs_to :list
  has_many :lists
  
end
