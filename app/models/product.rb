class Product < ApplicationRecord
  has_many :categories
  has_many :tickets
end
