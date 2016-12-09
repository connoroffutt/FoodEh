class Cuisine < ApplicationRecord

  belongs_to :recipes
  has_many :recipes

  def self.get_cuisine(cuisine)
    get("/search", query: {q: cuisine})["recipes"]
  end
end
