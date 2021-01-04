class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :stars, :content, :author, :author_id
end
