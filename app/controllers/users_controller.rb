class UsersController < ApplicationController
	skip_before_action :authenticate_request	

	def show
		# binding.pry
		@user = @current_user
		render json: @user
	end

	def feedback
		# binding.pry
		Feedback.create(content: params["feedback"])
		render json: {message: "Thank you!"}
	end
end
