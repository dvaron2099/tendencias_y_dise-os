class Gender < ApplicationRecord
  GENDER = %w(Dama Caballero)
  validates_inclusion_of :name, in: GENDER
  has_many :genders
end
