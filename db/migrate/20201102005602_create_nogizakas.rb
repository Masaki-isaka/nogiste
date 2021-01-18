class CreateNogizakas < ActiveRecord::Migration[6.0]
  def change
    create_table :nogizakas do |t|
      t.text :name
      t.integer :age
      t.text :member
      t.text :song
      t.text :introduction

      t.timestamps
    end
  end
end
