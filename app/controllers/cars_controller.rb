class CarsController < ApplicationController
  def index
    render json: Car.all
  end

  def list
    if user_signed_in?
      banneds_ids = current_user.banneds.pluck(:car_id)
      all = Car.all
      result = []
      carStruct = Struct.new(:id, :name, :description,:background_color, :price, :image, :horse_power, :banned)
      all.each do |car|
        ncar = carStruct.new
        ncar.id = car.id
        ncar.name = car.name
        ncar.description = car.description
        ncar.background_color = car.background_color
        ncar.price = car.price
        ncar.image = car.get_image_url
        ncar.horse_power = car.horse_power
        if banneds_ids.include? car.id
          ncar.banned = true
        else
          ncar.banned = false
        end
        result.push(ncar)
      end
      render json: result
    else
    render json: Car.all
  end
end

  def customIndex
    if user_signed_in?
      banneds_ids = current_user.banneds.pluck(:car_id)
      render json: Car.where.not(id: banneds_ids)
    else
      render json: Car.all
    end
  end
end
