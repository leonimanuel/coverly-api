class CompaniesController < ApplicationController
	skip_before_action :authenticate_request

	def search
		string = params[:company_string]
		search_matches = []
		Company.all.each do |company|
			if company.name.downcase.include?(string.downcase) && company.public
				search_matches << {name: company.name, id: company.id}
			end
		end
		
		render json: {matches: search_matches}
	end

	def show_or_create
		if params["company"]["id"] == "request-company"
			Company.create(name: params["company"]["name"], public: false)
		else
			company = Company.find(params["id"])
			render json: company			
		end

	end
end
