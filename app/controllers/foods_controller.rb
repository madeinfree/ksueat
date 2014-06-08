class FoodsController < ApplicationController

	before_action :login_required, :only => [:show]

	def index
		@foods = Foods.all
	end

	def show
		@food = Foods.find(params[:id])
		@comments = @food.comments.order("created_at DESC")
		@point = @food.foodpoints
	end

	def top5
		@foods = Foods.all.limit(5).order("comments_count DESC")
	end

	def customer
		@users = User.all
	end
end
