class Industry < ApplicationRecord
	has_many :positions
	# has_many :keywords

	has_many :keywords_industries
	has_many :keywords, through: :keywords_industries

end
