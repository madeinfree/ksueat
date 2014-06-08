class CreateFoodComments < ActiveRecord::Migration
  def change
    create_table :food_comments do |t|
      t.text :content
      t.integer :food_id
      t.integer :user_id

      t.timestamps
    end
  end
end
