# frozen_string_literal: true

class MembersController < ApplicationController
  def show
    if user_signed_in?
      render json: { message: "If you see this, you're in!" }
    else
      render json: { message: 'You are not connected' }
    end
  end
end
