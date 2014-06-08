class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :foods_id
      t.integer :users_id

      t.timestamps
    end
  end
end
