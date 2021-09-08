class PositionSerializer < ActiveModel::Serializer
  attributes :id, :name, :keywords, :industry_keywords

  def industry_keywords
  	object.industry.keywords.where(public: true)
  end
end
