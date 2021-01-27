class RemoveIndexEmailFromNogimasas < ActiveRecord::Migration[6.0]
  def change
    remove_index :nogimasas, column: :email, unique: true
  end
end
