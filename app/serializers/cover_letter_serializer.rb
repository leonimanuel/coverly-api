class CoverLetterSerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :company, :position, :updated_at

  def position
  	position = Position.find_by(name: object.position)
  	return position
  end

  def company
  	company = Company.find_by(name: object.company)
  	return company
  end

  # def cover_letters
  # 	object.cover_letters.collect do |cover_letter|
	 #  	{
	 #  		id: cover_letter.id,
	 #  		name: cover_letter.name,
	 #  		body: ""
	 #  	}  		
  # 	end
  # end  
end


