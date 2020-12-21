class CreateClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :climbs do |t|
      t.string :name
      t.string :climb_type
      t.string :difficulty
      t.float :rating
      t.string :state
      t.string :climbing_area
      t.string :image
      t.string :url
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
