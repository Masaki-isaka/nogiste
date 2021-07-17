class RenameNogimasaIdColumnToNogizakas < ActiveRecord::Migration[6.0]
  def change
    rename_column :nogizakas, :nogimasa_id, :user_id
  end
end
