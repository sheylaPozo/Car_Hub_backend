# frozen_string_literal: true

class Car < ApplicationRecord
  has_one_attached :image

  validates :image, {
    presence: true
  }
  validates :name, length: { maximum: 100, too_long: 'the name must not exceed 100 characters' }
  validates :description, length: { maximum: 250, too_long: 'the description must not exceed 250 characters' }

  def image_url
    image.service_url
  end

  def as_json(_options = {})
    { id: id,
      name: name,
      description: description,
      background_color: background_color,
      price: price,
      image: image_url,
      horse_power: horse_power }
  end
end
