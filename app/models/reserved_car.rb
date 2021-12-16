# frozen_string_literal: true

class ReservedCar < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :country, length: { maximum: 20, too_long: 'the name of the country is too long' }
  validates :date, presence: true

  def as_json(_options = {})
    { id: id,
      name: car.name,
      description: car.description,
      image: car.image_url,
      date: date,
      country: country,
      total_price: car.total_price
    }
  end
end
