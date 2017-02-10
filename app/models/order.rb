class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :products, through: :carted_product
  has_many :carted_products

  validates :quantity, presence: true
  validates :quantity, numericality: {greater_than: 0}
end