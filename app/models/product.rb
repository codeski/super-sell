class Product < ApplicationRecord
    belongs_to :department
    belongs_to :brand

    validates :name, :price, presence: true
    validates :price, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 100000 }
end
