class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :stars, :content
end
