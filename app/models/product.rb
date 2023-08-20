class Product < ApplicationRecord
  belongs_to :gender
  belongs_to :category

  has_many :product_sizes, dependent: :destroy
  has_many :sizes, through: :product_sizes

  has_many :product_colors, dependent: :destroy
  has_many :colors, through: :product_colors
  has_many_attached :photos
end
