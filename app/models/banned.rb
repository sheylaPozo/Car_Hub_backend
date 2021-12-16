# frozen_string_literal: true

class Banned < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :car, presence: true
  validates :user, presence: true
end
