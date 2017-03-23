class AddImagesToProductsAndAddressToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image1, :string
    add_column :products, :image2, :string
    add_column :products, :image3, :string
    add_column :products, :supplier, :string
    add_column :users, :phone, :string
    add_column :users, :province, :string
    add_column :users, :district, :string
    add_column :users, :sector, :string
    add_column :users, :cell, :string
  end
end