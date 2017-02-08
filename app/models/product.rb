class Product < ApplicationRecord
  belongs_to :supplier, optional:true
  has_many :images
  has_many :orders, through: :carted_products
  has_many :carted_products
end
