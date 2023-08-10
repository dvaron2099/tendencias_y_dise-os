class Product < ApplicationRecord
  belongs_to :gender
  belongs_to :category

  has_many :product_sizes
  has_many :sizes, through: :product_sizes

  has_many :product_colors
  has_many :colors, through: :product_colors

  before_validation :update_availability

  private

  def update_availability
    self.availability = stock > 0
  end
end
