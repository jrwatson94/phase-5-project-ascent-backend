class UserClimb < ApplicationRecord
    belongs_to :user
    belongs_to :climb

    validates_uniqueness_of :user_id, :scope => :climb_id
end
