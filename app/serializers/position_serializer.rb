class PositionSerializer < ActiveModel::Serializer
  attributes :id, :name, :keywords, :industry, :industry_keywords

  def industry_keywords
  	object.industry.keywords.where(public: true)
  end

  def industry
  	object.industry.name
  end
end
