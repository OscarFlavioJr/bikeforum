class User < ApplicationRecord
  has_secure_password
  has_many :user_bikes
  has_many :bikes, through: :user_bikes
  has_many :reviews
  has_many :posts
  has_many :comments
  has_many :questions
  has_many :answers
  has_many :listings
end