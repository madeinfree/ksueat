class Comment < ActiveRecord::Base
	belongs_to :foods, :counter_cache => true

	validates :content, presence: true, length: { maximum: 40 }

	belongs_to :author, :class_name => "User", :foreign_key => :users_id
end
