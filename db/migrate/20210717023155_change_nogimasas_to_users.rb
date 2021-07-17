class ChangeNogimasasToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_table :nogimasas, :users
  end
end
