class User < ApplicationRecord
    has_secure_password
    has_many :user_climbs
    has_many :climbs, through: :user_climbs
    validates :username, uniqueness: { case_sensitive: false }
end
