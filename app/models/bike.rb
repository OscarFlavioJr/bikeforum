class Bike < ApplicationRecord
  has_many :user_bikes
  has_many :owners, through: :user_bikes, source: :user
  has_many :reviews
end
