class Order < ApplicationRecord
  has_many :products, through: :carted_products
  belongs_to :user, optional: true
  has_many :carted_products
end