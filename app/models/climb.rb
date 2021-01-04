class Climb < ApplicationRecord
    has_many :user_climbs
    has_many :users, through: :user_climbs

    def reviews
        self.user_climbs.map {|user_climb| user_climb.review}
    end
end
