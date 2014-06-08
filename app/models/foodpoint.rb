class Foodpoint < ActiveRecord::Base
	belongs_to :foods
	belongs_to :users
end
