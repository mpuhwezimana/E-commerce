class Product < ApplicationRecord
  belongs_to :supplier, optional:true
  has_many :images
  has_many :orders, through: :carted_product
  has_many :carted_products

  def tax
    return price * 0.09    
  end
end