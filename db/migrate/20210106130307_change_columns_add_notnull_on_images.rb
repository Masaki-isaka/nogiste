class ChangeColumnsAddNotnullOnImages < ActiveRecord::Migration[6.0]
  def change
    change_column_null :images, :place, false,0
  end
end
