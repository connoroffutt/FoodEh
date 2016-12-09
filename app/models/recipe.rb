
class Recipe < ApplicationRecord

  belongs_to :ingredients
  has_many :ingredients
  belongs_to :cuisines
  has_many :cuisines
  belongs_to :users
  has_many :users



  def self.for(term)
    get("/search", query: {q: term})["recipes"]
  end

  def self.get_recipe(id)
    get("/get", query: {rId: id})["recipe"]
  end




end
