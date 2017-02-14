class Product < ApplicationRecord
  belongs_to :supplier, optional:true
  has_many :images
  has_many :orders, through: :carted_product
  has_many :carted_products
  validates :name, presence: { message: "You can't leave Name space empty!" }
  validates :price, presence: true 
  validates :price, numericality: {greater_than: 0}

  def tax
    return price * 0.09    
  end
end