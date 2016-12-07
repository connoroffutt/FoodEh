class Recipe < ApplicationRecord

  belongs_to :ingredients
  has_many :ingredients
  belongs_to :cuisines
  has_many :cuisines
  belongs_to :users
  has_many :users

    include HTTParty
     ENV["FOOD2FORK_KEY"] = "5a73407284d9736f03d4d5d6a193a04d"
     base_uri 'http://food2fork.com/api'
     default_params key: ENV["FOOD2FORK_KEY"]
     format :json

     def self.for(term)
       get("/search", query: {q: term})["recipes"]
     end

     def self.get_recipe(id)
       get("/get", query: {rId: id})["recipe"]
     end

end
