class Product < ApplicationRecord
  belongs_to :supplier, optional:true
  has_many :images
end
