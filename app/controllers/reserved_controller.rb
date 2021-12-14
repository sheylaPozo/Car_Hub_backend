# frozen_string_literal: true

class ReservedController < ApplicationController
    def index
        if user_signed_in?
            render json: current_user.reserved_cars
        else
            render json: { message: 'You are not connected' }
        end
    end

    def create
        if user_signed_in?
            reserved_car = ReservedCar.new
            reserved_car.user = current_user
            reserved_car.car = Car.find(params[:car_id])
            reserved_car.country = params[:country]
            reserved_car.date = params[:date]
            if reserved_car.save
                render json: { message: 'Car Reserved' }
            else
                render json: { message: 'Invalid Data' }
            end
        else
            render json: { message: 'You are not connected' }
        end
    end

    def delete
        if user_signed_in?
            if current_user.reserved_cars.find(params[:reserved_id])
                current_user.reserved_cars.delete_by(id: params[:reserved_id])
                render json: { message: 'Reservation Deleted' }
            else
                render json: { message: 'Reservation Not Found' }
            end
        else
            render json: { message: 'You are not connected' }
        end
    end
  end