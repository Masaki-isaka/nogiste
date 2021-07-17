class RenameNogimasaIdColumnToFavos < ActiveRecord::Migration[6.0]
  def change
    rename_column :favos, :nogimasa_id, :user_id
  end
end
