class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :username, :bio, :interests, :state
    has_many :user_climbs
    has_many :climbs, through: :user_climbs
  end
  