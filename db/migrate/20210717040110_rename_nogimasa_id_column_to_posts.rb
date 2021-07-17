class RenameNogimasaIdColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :nogimasa_id, :user_id
  end
end
