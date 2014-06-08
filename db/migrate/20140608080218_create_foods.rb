class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name,               :null => false, :default => ""
      t.string :address
      t.datetime :traffictimeopen
      t.datetime :traffictimeclose
      t.string :phone
      t.string :introduction
      t.string :latlng

      t.timestamps
    end
    add_index :foods, :name,                :unique => true
    add_index :foods, :phone,                :unique => true
  end
end
