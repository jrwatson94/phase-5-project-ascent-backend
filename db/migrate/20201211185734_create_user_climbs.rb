class CreateUserClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_climbs do |t|
      t.integer :user_id
      t.integer :climb_id
      t.boolean :completed
      t.boolean :favorite

      t.timestamps
    end
  end
end
