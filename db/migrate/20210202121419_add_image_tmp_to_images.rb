class AddImageTmpToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :image_tmp, :string
  end
end
