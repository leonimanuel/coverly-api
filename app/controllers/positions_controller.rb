class PositionsController < ApplicationController
	skip_before_action :authenticate_request	

	def search
		string = params[:position_string]
		search_matches = []
		Position.all.each do |position|
			if position.name.downcase.include?(string.downcase)
				search_matches << { name: position.name, id: position.id }
			end
		end

		render json: {matches: search_matches}
	end

	def index
		positions = Position.all
		render json: positions
	end

	def show
		position = Position.find(params["id"])
		render json: position
	end
end
