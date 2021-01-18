class AddDetailsToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :place, :text
  end
end
