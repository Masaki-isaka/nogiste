class AddUsernameToNogimasas < ActiveRecord::Migration[6.0]
  def change
    add_column :nogimasas, :username, :string, :unique => true, :null => false, :default => "" 
  end
end
