class ClimbSerializer < ActiveModel::Serializer
    attributes :id, :name, :climb_type, :difficulty, :rating, :state, :climbing_area, :image, :url, :lat, :long
    has_many :user_climbs
    
  end
  