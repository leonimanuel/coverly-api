class UsersController < ApplicationController
	def show
		# binding.pry
		user = @current_user
		render json: {id: user.id, first_name: user.first_name}
	end
end
