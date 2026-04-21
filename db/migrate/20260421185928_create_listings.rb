class CreateListings < ActiveRecord::Migration[8.0]
  def change
    create_table :listings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bike, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.decimal :price
      t.string :status

      t.timestamps
    end
  end
end
