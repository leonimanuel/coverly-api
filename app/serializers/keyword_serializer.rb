class KeywordSerializer < ActiveModel::Serializer
  attributes :id, :name, :companies

  def companies
  	company_names = []
  	object.companies.each do |company|
  		company_names << company.name
  	end
  	company_names
  end
end
