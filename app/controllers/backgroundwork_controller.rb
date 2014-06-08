class BackgroundworkController < ApplicationController
	def index
		
	end

	def create
		@food = Foods.create(food_add_params)
			flash[:notice] = "加入成功"
			redirect_to(@food)
	end

	private

	def food_add_params
		params.require(:food).permit(:name, :address, :phone, :traffictimeopen, :traffictimeclose, :introduction)
	end
end
