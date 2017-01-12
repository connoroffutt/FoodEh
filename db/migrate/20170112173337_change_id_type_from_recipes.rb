class ChangeIdTypeFromRecipes < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :f2f_id, :string
  end
end
