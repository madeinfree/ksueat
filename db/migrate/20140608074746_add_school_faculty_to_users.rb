class AddSchoolFacultyToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :school, :string
  	add_column :users, :faculty, :string
  end
end
