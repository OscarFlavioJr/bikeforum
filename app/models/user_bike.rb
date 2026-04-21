class UserBike < ApplicationRecord
belongs_to :user
belongs_to :bike
has_many :reviews
end
