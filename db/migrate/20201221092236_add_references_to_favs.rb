class AddReferencesToFavs < ActiveRecord::Migration[6.0]
  def change
    add_reference :favs, :image, null: false, foreign_key: true
  end
end
