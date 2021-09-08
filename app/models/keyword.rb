class Keyword < ApplicationRecord
	has_many :keywords_positions
	has_many :positions, through: :keywords_positions

	has_many :keywords_companies
	has_many :companies, through: :keywords_companies

	has_many :keywords_industries
	has_many :industries, through: :keywords_industries

	# belongs_to :industry
end
