class CreateFoodpoints < ActiveRecord::Migration
  def change
    create_table :foodpoints do |t|
      t.integer :foods_id
      t.integer :user_id

      t.timestamps
    end
  end
end
