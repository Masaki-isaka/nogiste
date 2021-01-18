class RemoveNogimasaFromNogiimages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :nogiimages, :nogimasa, null: false, foreign_key: true
  end
end
