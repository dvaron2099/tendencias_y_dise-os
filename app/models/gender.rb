class Gender < ApplicationRecord
  has_many :products
  has_many :categories
end
