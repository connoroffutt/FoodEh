class Cuisine < ApplicationRecord

  belongs_to :recipes
  has_many :recipes



  def self.for(term)
    get("/search", query: {q: term})["recipes"]
  end

end
