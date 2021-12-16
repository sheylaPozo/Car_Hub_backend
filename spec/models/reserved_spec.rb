# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ReservedCar, type: :model do
  describe 'validates' do
    before :each do
        @car =Car.new
        @car.name = "Valkyrie"
        @car.background_color = "#F9F5F6"
        @car.price = 356176.45
        @car.horse_power = 1140
        @car.description = "An incredibly special car with an equally remarkable name. One that immediately evokes connotations of power and honor, of being chosen by the Gods. Only 150 road cars will be made. Valkyrie is Aston Martin’s first hypercar"
        @car.image.attach(io: File.open("seedImages/Valk.png"), filename: "#{Car.count}.png")

        @user = User.new(email: 'test@example.com', password:"123456789")

        @reserved_car = ReservedCar.new(car:@car, user:@user, date:"1-1-2001", country:"Guatemala")
      end

      
    it 'expect user to be valid' do
        expect(@reserved_car).to be_valid
      end

      it 'expect Country to be a string of maximun twenty characters' do
        @reserved_car.country="012345678901234567891"
        expect(@reserved_car.valid?).to eq(false) 
      end

      it 'expect Country to be a string of maximun twenty characters' do
        @reserved_car.country="012345678901234567891"
        expect(@reserved_car.valid?).to eq(false) 
      end

      it 'expect date to have a date format' do
        @reserved_car.date="012345678901234567891"
        expect(@reserved_car.valid?).to eq(false) 
      end
    end
end