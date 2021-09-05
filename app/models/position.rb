class Position < ApplicationRecord
	has_many :keywords_positions
	has_many :keywords, through: :keywords_positions
end


