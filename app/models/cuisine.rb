class Cuisine < ApplicationRecord

  belongs_to :recipes
  has_many :recipes

  # include HTTParty
  #
  # ENV["FOOD2FORK_KEY"] = "5a73407284d9736f03d4d5d6a193a04d"
  # base_uri 'http://food2fork.com/api'
  # default_params key: ENV["FOOD2FORK_KEY"]
  # format :json

  def self.get_cuisine(cuisine)
    get("/search", query: {q: cuisine})["recipes"]
  end

end
