# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validates' do
    before :each do
        @user = User.new(email: 'test@example.com', password:"123456789")
      end

      
    it 'expect user to be valid' do
        expect(@user).to be_valid
      end

      it 'the email should not be blank' do
        @user.email =""
        expect(@user.valid?).to eq(false)
      end

      it 'the password should not be blank' do
        @user.password =""
        expect(@user.valid?).to eq(false)
      end

      it 'the password should have atleast 6 characters' do
        @user.password ="12345"
        expect(@user.valid?).to eq(false)
      end

      it 'the email should have a valid mail format' do
        @user.email ="gwergeargaergergaer"
        expect(@user.valid?).to eq(false)
      end
    end
end