class CarsController < ApplicationController
  def index
    render json: Car.all
  end
end
