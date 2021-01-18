class CreateNogiimages < ActiveRecord::Migration[6.0]
  def change
    create_table :nogiimages do |t|
      t.string :img
      t.references :nogimasa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
