class ProductsController < ApplicationController

  def index
    @products = Product.all   
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
  end

  def create
    name = params[:name]
    description = params[:description]
    price = params[:price]
    image = params[:image]
    product = Product.new({name: name, description: description, price: price, image: image  })
    product.save
    redirect_to "/products/#{product.id}" 
    flash[:success]= "Product created"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.description = params[:description]
    product.price = params[:price]
    product.image = params[:image]
    product.save
    redirect_to "/products/#{product.id}"
    flash[:info]= "Product updated"   end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
    flash[:warning]= "Product destroyed"
  end
end