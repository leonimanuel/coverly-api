class CompaniesController < ApplicationController
	skip_before_action :authenticate_request

	def search
		binding.pry
		string = params[:company_string]
		search_matches = []
		Company.all.each do |company|
			if company.name.downcase.include?(string.downcase)
				search_matches << {name: company.name, id: company.id}
			end
		end
		
		render json: {matches: search_matches}
	end

	def show
		company = Company.find(params["id"])
		render json: company
	end
end
