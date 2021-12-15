# frozen_string_literal: true

class ReservedCar < ApplicationRecord
  belongs_to :user
  belongs_to :car

  def as_json(_options = {})
    { id: id,
      name: car.name,
      description: car.description,
      image: car.image_url,
      date: date,
      country: country }
  end
end
