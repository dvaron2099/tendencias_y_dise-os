class ProductColor < ApplicationRecord
  belongs_to :product
  belongs_to :size
end
