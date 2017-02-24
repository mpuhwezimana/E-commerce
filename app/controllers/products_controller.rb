class ProductsController < ApplicationController

  def index
    if params[:sort]
      @products = Product.all.order(price: params[:sort])
    elsif params[:filter] == "discount"
      @products = Product.where("price < ?", 500)      
    else
      @products = Product.all
    end
    @suppliers = Supplier.all
  end

  def show
    @product = Product.find_by(id: params[:id])
    @suppliers = Supplier.all
  end

  def new
    @suppliers = Supplier.all
    @product = Product.new
  end

  def create
    name = params[:name]
    description = params[:description]
    price = params[:price]
    supplier = params[:supplier_id]
    @product = Product.new({name: name, description: description, price: price })
    if @product.save
    redirect_to "/products/#{@product.id}" 
    flash[:success]= "Product created"
    else
      @suppliers = Supplier.all
      flash[:warning] = "Product NOT Created"
      render :new
    end 
  end

  def edit
    @product = Product.find_by(id: params[:id])
    @suppliers = Supplier.all
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.description = params[:description]
    @product.price = params[:price]
    @supplier = params[:supplier_id]
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