class Recipe < ApplicationRecord

  belongs_to :ingredients
  has_many :ingredients
  belongs_to :cuisines
  has_many :cuisines
  belongs_to :users
  has_many :users

end
