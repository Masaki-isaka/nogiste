class RemoveImageIdFromFavs < ActiveRecord::Migration[6.0]
  def change
    remove_column :favs, :image_id, :integer
  end
end
