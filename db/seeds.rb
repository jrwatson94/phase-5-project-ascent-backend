# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative "./climbs.rb"

User.destroy_all
Climb.destroy_all
UserClimb.destroy_all

ROUTES[:routes].each do |route|
    Climb.create(
        name: route[:name],
        climb_type: route[:type],
        difficulty: route[:rating],
        rating: route[:stars],
        state: route[:location][0],
        climbing_area: route[:location][1],
        image: route[:imgMedium],
        url: route[:url]
    )
end





