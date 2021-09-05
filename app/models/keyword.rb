class Keyword < ApplicationRecord
	has_many :keywords_positions
	has_many :positions, through: :keywords_positions

	belongs_to :industry
end
