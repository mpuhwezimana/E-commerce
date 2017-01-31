class ProductsController < ApplicationController

  def index
    if params[:sort]
      @products = Product.all.order(price: params[:sort])
    elsif params[:filter] == "discount"
      @products = Product.where("price < ?", 500)      
    else
      @products = Product.all
    end
  end

  def show
    if params[:id] = "random"
      @product = Product.all.sample
    else 
      @product = Product.find_by(id: params[:id])
    end 
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
    flash[:info]= "Product updated"
    end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
    flash[:warning]= "Product destroyed"
  end
end

def search
  search_query = params[:search_input]
  @products = Product.where("name LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
  if @products.empty?
    flash[:info] = "Sorry, No product found in search"
  end
    render "index.html.erb"
end