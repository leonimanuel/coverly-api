class Position < ApplicationRecord
	has_many :keywords_positions
	has_many :keywords, through: :keywords_positions

	has_many :top_skills, foreign_key: "ts_position_id", class_name: "KeywordsPosition"

	belongs_to :industry
end


