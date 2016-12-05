class CreateJoinTableRecipesUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :recipes, :users do |t|
    t.index :user_id
    t.index :recipe_id
    end
  end
end
