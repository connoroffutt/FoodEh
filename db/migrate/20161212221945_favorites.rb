class Favorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :user_id, :integer
    add_column :favorites, :recipe_id, :integer
    add_column :favorites, :name, :string
  end
end
