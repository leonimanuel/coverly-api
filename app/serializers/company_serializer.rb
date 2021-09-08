class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :blurb, :link, :values

  def values
  	object.keywords
  end
end
