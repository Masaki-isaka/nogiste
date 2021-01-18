class RenameImgsColumnToImages < ActiveRecord::Migration[6.0]
  def change
    rename_column :images, :imgs, :file
  end
end
