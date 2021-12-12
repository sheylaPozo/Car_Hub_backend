class Car < ApplicationRecord
    has_one_attached :image

    validates :image, {
        presence: true
      }
      validates :name, length: { maximum: 100, too_long: 'the name must not exceed 100 characters' }
      validates :description, length: { maximum: 250, too_long: 'the description must not exceed 250 characters' }

      def get_image_url
        url_for(self.image)
      end
end
