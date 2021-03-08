class PositionsController < ApplicationController
	def search
		string = params[:position_string]
		search_matches = []
		Position.all.each do |position|
			if position.name.downcase.include?(string.downcase)
				search_matches << {position.name, position.id}
			end
		end

		render json: {matches: search_matches}
	end

	def index
		positions = Position.all
		render json: positions
	end
end
