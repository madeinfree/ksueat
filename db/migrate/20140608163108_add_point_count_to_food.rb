class AddPointCountToFood < ActiveRecord::Migration
  def change
  	add_column :foods, :points_count, :integer, :default => 0
  end
end
