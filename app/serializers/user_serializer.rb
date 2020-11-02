class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :cover_letters

  def cover_letters
  	object.cover_letters.collect do |cover_letter|
	  	{
	  		id: cover_letter.id,
	  		name: cover_letter.name,
	  		body: ""
	  	}  		
  	end
  end
end
