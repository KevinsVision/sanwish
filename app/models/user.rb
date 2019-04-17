class User < ApplicationRecord
  has_many :sandwiches
  has_many :ingredients, through: :sandwiches
end
