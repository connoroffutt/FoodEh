class CreateJoinTableCuisinesRecipes < ActiveRecord::Migration[5.0]
  def change
    create_join_table :recipes, :cuisines do |t|
    t.index  :recipe_id
    t.index  :cuisine_id
    end
  end
end
