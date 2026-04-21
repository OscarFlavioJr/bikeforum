class CreateUserBikes < ActiveRecord::Migration[8.0]
  def change
    create_table :user_bikes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bike, null: false, foreign_key: true
      t.integer :year_acquired
      t.integer :mileage
      t.string :color
      t.text :notes
      t.timestamps
    end
  end
end