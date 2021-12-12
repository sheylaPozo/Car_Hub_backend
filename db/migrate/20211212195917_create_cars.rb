class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :background_color
      t.decimal :price
      t.integer :horse_power
      t.text :description
      t.timestamps
    end
  end
end
