class AddDetailsToNogizakas < ActiveRecord::Migration[6.0]
  def change
    add_reference :nogizakas, :nogimasa, null: false, foreign_key: true
  end
end
