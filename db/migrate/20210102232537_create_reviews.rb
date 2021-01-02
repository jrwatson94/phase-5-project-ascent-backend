class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_climb_id
      t.string :title
      t.integer :stars
      t.string :content

      t.timestamps
    end
  end
end
