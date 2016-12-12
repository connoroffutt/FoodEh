
class Recipe < ApplicationRecord

  belongs_to :ingredients
  has_many :ingredients
  belongs_to :cuisines
  has_many :cuisines
  has_many :users, through: :favorites



  def self.for(term)
    get("/search", query: {q: term})["recipes"]
  end

  def self.get_recipe(id)
    get("/get", query: {rId: id})["recipe"]
  end




end
