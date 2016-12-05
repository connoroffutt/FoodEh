class CreateJoinTableIngredientsLists < ActiveRecord::Migration[5.0]
  def change
    create_join_table :lists, :ingredients do |t|
    t.index :list_id
    t.index :ingredient_id
    end
  end
end
