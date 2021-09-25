class PositionsController < ApplicationController
	skip_before_action :authenticate_request	

	def search
		string = params[:position_string]
		search_matches = []
		Position.all.each do |position|
			if position.name.downcase.include?(string.downcase) && position.public
				search_matches << { name: position.name, id: position.id }
			end
		end
		# binding.pry
		render json: {matches: search_matches}
	end

	def index
		positions = Position.all
		render json: positions
	end

	def show_or_create
		if params["position"]["id"] == "request-position"
			Position.create(name: params["position"]["name"], industry: Industry.find_by(name: "General"), public: false)
		else
			position = Position.find(params["id"])
			render json: position
		end	

		if params["company"]["id"] == "request-company"
			Company.create(name: params["company"]["name"], public: false)
		else
			company = Company.find(params["id"])
			render json: company			
		end		
	end
end
