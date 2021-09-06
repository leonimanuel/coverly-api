class Company < ApplicationRecord
	has_many :keywords_companies
	has_many :keywords, through: :keywords_companies
end
