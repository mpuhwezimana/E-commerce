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
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    name = params[:name]
    description = params[:description]
    price = params[:price]
    supplier = params[:supplier]
    image1 = params[:image1]
    image2 = params[:image2]
    image3 = params[:image3]
    @product = Product.new({name: name, description: description, price: price, supplier: supplier, image1: image1, image2: image2, image3: image3 })
    if @product.save
    redirect_to "/products/#{@product.id}" 
    flash[:success]= "Product created"
    else
      flash[:warning] = "Product NOT Created"
      render :new
    end 
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.description = params[:description]
    @product.price = params[:price]
    @product.supplier = params[:supplier]
    @product.image1 = params[:image1]
    @product.image2 = params[:image2]
    @product.image3 = params[:image3]
    if @product.save
      redirect_to "/products/#{@product.id}"
      flash[:info]= "Product updated"
    else
      @suppliers = Supplier.all
      flash[:warning] = "Product NOT Updated"
      render :edit
    end 
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
    flash[:warning]= "Product destroyed"
  end

  def search
    search_query = params[:search_input]
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @products.empty?
      flash[:info] = "No products found in search"
    end
    render :index
  end
end