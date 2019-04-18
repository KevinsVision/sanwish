class Stock < ApplicationRecord
    belongs_to :ingredient
    belongs_to :restaurant

  validates :count, numericality: {greater_than: 1}

end
