class CreateBikes < ActiveRecord::Migration[8.0]
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :style
      t.integer :engine_cc
      t.integer :horsepower
      t.string :torque
      t.integer :weight_kg
      t.string :transmission
      t.decimal :fuel_capacity
      t.boolean :abs
      t.text :description
      t.string :photo
      t.timestamps
    end
  end
end