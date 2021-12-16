# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'validates' do
    before :each do
        @car =Car.new
        @car.name = "Valkyrie"
        @car.background_color = "#F9F5F6"
        @car.price = 356176.45
        @car.horse_power = 1140
        @car.description = "An incredibly special car with an equally remarkable name. One that immediately evokes connotations of power and honor, of being chosen by the Gods. Only 150 road cars will be made. Valkyrie is Aston Martin’s first hypercar"
        @car.image.attach(io: File.open("seedImages/Valk.png"), filename: "#{Car.count}.png")
      end

      
    it 'expect car to be valid' do
        expect(@car).to be_valid
      end

      it 'the name should not be blank' do
        @car.name = ""
        expect(@car.valid?).to eq(false)
      end

      it 'the description should not be blank' do
        @car.description = ""
        expect(@car.valid?).to eq(false)
      end

      it 'the description should not be more than 250 letters' do
        @car.description = "You need to see this!” Tom Harvey’s wife exclaimed one rainy fall afternoon in 1994. Harvey, ’69, looked at the letter his wife was holding and read, “I was at the funeral of Abraham Lincoln.” The two of them sorted through the contents of four wooden crates unearthed from Harvey’s parents’ house: 250 letters written during the Civil War.Though Harvey recognized that the letters contained a story that was begging to be told, writing that story “would have to wait.” At the time of the letters’ discovery, Harvey was knee-deep in his career. He studied as an English major"
        expect(@car.valid?).to eq(false)
      end

      it 'the name should not be more than 100 letters' do
        @car.name = "You need to see this!” Tom Harvey’s wife exclaimed one rainy fall afternoon in 1994. Harvey, ’69, looked at the letter his wife was holding and read, “I was at the funeral of Abraham Lincoln.” The two of them sorted through the contents of four wooden crates unearthed from Harvey’s parents’ house: 250 letters written during the Civil War.Though Harvey recognized that the letters contained a story that was begging to be told, writing that story “would have to wait.” At the time of the letters’ discovery, Harvey was knee-deep in his career. He studied as an English major"
        expect(@car.valid?).to eq(false)
      end

      it 'Horse Power should be a number' do
        @car.horse_power = "e"
        expect(@car.valid?).to eq(false)
      end

      it 'Horse Power should be a number with a value over 0' do
        @car.horse_power = 4
        expect(@car.valid?).to eq(true)
      end

      
      it 'Background color should be a hex value' do
        @car.background_color = "awefwes"
        expect(@car.valid?).to eq(false)

        @car.background_color = "#ffffff"
        expect(@car.valid?).to eq(true)
      end
    end
end