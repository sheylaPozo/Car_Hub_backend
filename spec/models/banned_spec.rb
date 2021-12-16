# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Banned, type: :model do
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

        @banned = Banned.new(car:@car, user:@user)
      end

      
    it 'expect user to be valid' do
        expect(@banned).to be_valid
      end

      it 'the model should have a user to be valid' do
        @banned.user = nil
        expect(@banned.valid?).to eq(false)
      end

      it 'the model should have a car to be valid' do
        @banned.car = nil
        expect(@banned.valid?).to eq(false)
      end
    end
end