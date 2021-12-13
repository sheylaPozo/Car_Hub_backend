class CreateReservedCars < ActiveRecord::Migration[6.1]
  def change
    create_table :reserved_cars do |t|
      t.date :date
      t.string :country
      t.timestamps
    end
  end
end
