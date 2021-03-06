
class Recipe < ApplicationRecord
  belongs_to :cuisines
  has_many :cuisines
  belongs_to :users
  has_many :users
  has_and_belongs_to_many :ingredients
  has_many :users, through: :favorites
  has_many :reviews


  def self.for(term)
    get("/search", query: {q: term})["recipes"]
    # JSON.parse(File.read("#{Rails.root}/public/search.json"))["recipes"]
  end

  def self.get_recipe(id)
    data = get("/get", query: {rId: id})["recipe"]
    fid = data["recipe_id"]
    # binding.pry

    if Recipe.exists?(['f2f_id LIKE ?', "%#{fid}%"])
      recipe = Recipe.find_by f2f_id: data["recipe_id"]
    else
      recipe = Recipe.create!(f2f_id: data["recipe_id"], name: data["title"], recipe_construction: data["source_url"], recipe_picture: data["image_url"])
      data["ingredients"].each do |i|
        recipe.ingredients.create!(description: i)
      end
      recipe
    end
  end
end
