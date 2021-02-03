class RemoveImageTmpFromImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :image_tmp, :string
  end
end
