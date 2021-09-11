class KeywordsController < ApplicationController
	skip_before_action :authenticate_request

	def general
		keywords = Keyword.includes(:industries).where('industries.name = ?', 'General').references(:industries)
		render json: keywords
	end
end
