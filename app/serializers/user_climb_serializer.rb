class UserClimbSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :climb_id, :completed
    
  end
  