class CoverLetterSerializer < ActiveModel::Serializer
  attributes :id, :name :body, :company, :position :updated_at
end
