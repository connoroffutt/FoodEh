class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.integer :recipe_id
      t.string  :name
      t.string  :description
      t.string  :image_url


      t.timestamps
    end
  end
end
