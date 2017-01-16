class CreateCuisines < ActiveRecord::Migration[5.0]
  def change
    create_table :cuisines do |t|
      t.integer :cuisine_id
      t.string  :name
      t.string   :image_url
      t.timestamps
    end
  end
end
