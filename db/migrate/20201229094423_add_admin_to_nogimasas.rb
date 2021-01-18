class AddAdminToNogimasas < ActiveRecord::Migration[6.0]
  def change
    add_column :nogimasas, :admin, :boolean, default: false
  end
end
