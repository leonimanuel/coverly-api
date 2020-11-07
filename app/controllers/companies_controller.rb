class CompaniesController < ApplicationController
	def search
		string = params[:company_string]
		search_matches = []
		Company.all.each do |company|
			if company.name.downcase.include?(string.downcase)
				search_matches << company.name
			end
		end

		render json: {matches: search_matches}
	end
end
