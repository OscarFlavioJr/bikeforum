class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  belongs_to :user_bike
end
