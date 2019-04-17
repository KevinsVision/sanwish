class Restaurant < ApplicationRecord
    has_many :stocks
    has_many :ingredients, through: :stocks
    has_many :sandwiches, through: :stocks
end
