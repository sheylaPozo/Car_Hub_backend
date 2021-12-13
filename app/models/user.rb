class User < ApplicationRecord

  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist
  has_many :banneds
  has_many :reserved_cars
end
