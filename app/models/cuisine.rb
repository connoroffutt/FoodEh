class Cuisine < ApplicationRecord

  belongs_to :recipes
  has_many :recipes

  
end
