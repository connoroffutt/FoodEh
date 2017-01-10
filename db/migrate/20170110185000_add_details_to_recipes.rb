class AddDetailsToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :recipe_construction, :string
    add_column :recipes, :recipe_picture, :string
  end
end
