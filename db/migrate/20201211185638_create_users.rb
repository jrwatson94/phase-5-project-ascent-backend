class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :state
      t.string :bio
      t.string :interests

      t.timestamps
    end
  end
end
