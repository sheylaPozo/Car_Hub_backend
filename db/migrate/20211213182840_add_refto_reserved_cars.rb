class AddReftoReservedCars < ActiveRecord::Migration[6.1]
  def change
    add_reference :reserved_cars, :user, null: false, foreign_key: true
    add_reference :reserved_cars, :car, null: false, foreign_key: true
  end
end
