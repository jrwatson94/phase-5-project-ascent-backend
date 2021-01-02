class UserClimb < ApplicationRecord
    belongs_to :user
    belongs_to :climb
    has_one :review

    validates_uniqueness_of :user_id, :scope => :climb_id
end
