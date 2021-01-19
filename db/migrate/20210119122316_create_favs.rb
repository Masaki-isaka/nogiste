class CreateFavs < ActiveRecord::Migration[6.0]
  def change
    create_table :favs do |t|
      t.references :image, null: false, foreign_key: true
      t.references :nogimasa, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
