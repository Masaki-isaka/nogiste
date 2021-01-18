class CreateNogiposts < ActiveRecord::Migration[6.0]
  def change
    create_table :nogiposts do |t|
      t.string :content
      t.references :nogimasa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
