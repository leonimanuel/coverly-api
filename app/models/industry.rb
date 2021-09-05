class Industry < ApplicationRecord
	has_many :positions
	has_many :keywords
end
