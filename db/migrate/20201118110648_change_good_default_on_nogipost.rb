class ChangeGoodDefaultOnNogipost < ActiveRecord::Migration[6.0]
  def up
    change_column :nogiposts, :good, :integer, default:0
  end

  def down
    change_column :nogiposts, good, :integer
  end
end
