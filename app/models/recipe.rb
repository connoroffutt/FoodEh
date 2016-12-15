
class Recipe < ApplicationRecord
  belongs_to :cuisines
  has_many :cuisines
  belongs_to :users
  has_many :users
  has_and_belongs_to_many :ingredients
  has_many :users, through: :favorites


  def self.for(term)
    get("/search", query: {q: term})["recipes"]
    # JSON.parse(File.read("#{Rails.root}/public/search.json"))["recipes"]

  end

  def self.get_recipe(id)

    data = get("/get", query: {rId: id})["recipe"]
    recipe = Recipe.create!(f2f_id: data["recipe_id"], name: data["title"])
    data["ingredients"].each do |i|
      recipe.ingredients.create!(description: i)
    end
    recipe
  end
end
