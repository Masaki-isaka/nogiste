class RenameNogiimageColumnToFavs < ActiveRecord::Migration[6.0]
  def change
    rename_column :favs, :nogiimage_id, :image_id, foreign_key: true
  end
end
