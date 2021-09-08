class KeywordsController < ApplicationController
	skip_before_action :authenticate_request

	def general
		# company = Company.find(params["id"])
		general = Industry.find_by(name: "General")
		keywords = Keyword.where(industry: general, public: true)
		render json: keywords
	end
end
