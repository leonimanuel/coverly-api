class KeywordsController < ApplicationController
	skip_before_action :authenticate_request

	def general
		# company = Company.find(params["id"])
		general = Industry.find_by(name: "General")
		keywords = []
		Keyword.all.each do |kw| 
			if kw.industries.include?(general)
				keywords << kw
			end
		end
		# keywords = Keyword.where(industry: general, public: true)
		render json: keywords
	end
end
