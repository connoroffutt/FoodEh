class Ingredient < ApplicationRecord

  has_many :recipes
  belongs_to :recipes
  belongs_to :lists
  has_many :lists

end
