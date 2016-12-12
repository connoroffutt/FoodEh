class ChangeRecipeidToF2fid < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :recipe_id, :f2f_id
  end
end
