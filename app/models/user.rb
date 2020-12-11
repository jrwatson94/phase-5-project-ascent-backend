class User < ApplicationRecord
    has_many :user_climbs
    has_many :climbs, through: :user_climbs
end
