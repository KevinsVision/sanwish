class User < ApplicationRecord
  has_many :sandwiches
  has_many :ingredients, through: :sandwiches

  validates :name, presence: true
  validates :surname, presence: true
  validates :email, confirmation: true
  validates :phone_number, length: { is: 6 }
  validates :age, presence: true
end
