class AddCommentsCountToFood < ActiveRecord::Migration
  def change
  	add_column :foods, :comments_count, :integer, :default => 0
  end
end
