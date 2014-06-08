class FoodCommentsController < ApplicationController

	before_action :login_required, :only => [:new, :create, :add_point]

	def new
		@food = Foods.find(params[:food_id])
		@comment = @food.comments.build
	end

	def create
		@food = Foods.find(params[:food_id])
		@comment = @food.comments.new(create_comment_params)
		@comment.users_id = current_user.id
		if @comment.save
			flash[:notice] = "感謝您的評論"
			redirect_to(@food)
		else
			flash[:warning] = "請輸入評論，或字數超過40"
			render :new
		end
	end

	def add_point
		@food = Foods.find(params[:food_id])

		if !current_user.is_include_of?(@food)
			@point = @food.foodpoints.new
			@point.user_id = current_user.id
			if @point.save
				flash[:notice] = "感謝您的投票"
				redirect_to(@food)
			else
				flash[:warning] = "投票失敗"
				redirect_to(@food)
			end
		else
			flash[:warning] = "感謝您的支持，您已經投過票！"
			redirect_to(@food)
		end
	end

	private
	def create_comment_params
		params.require(:comment).permit(:content)
	end

end
