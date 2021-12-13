class AddCarRefToBanneds < ActiveRecord::Migration[6.1]
  def change
    add_reference :banneds, :user, null: false, foreign_key: true
    add_reference :banneds, :car, null: false, foreign_key: true
  end
end
