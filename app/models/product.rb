class Product < ApplicationRecord
    validates :stock, numericality: {greater_than_or_equal_to: 0}
    has_many :categories_products
    has_many :categories, through: :categories_products
    enum status: [:draft, :published, :archived]



end
