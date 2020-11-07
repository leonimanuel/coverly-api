class PositionsController < ApplicationController
	def show
		# binding.pry
		@user = @current_user
		render json: @user
	end
end
