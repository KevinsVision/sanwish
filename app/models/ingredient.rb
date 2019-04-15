class Ingredient < ApplicationRecord
    has_many :stocks
    has_many :restaurants, through: :stocks
    has_many :sandwich_ingredients
    has_many :sandwiches, through: :sandwich_ingredients
end
