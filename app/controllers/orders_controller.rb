class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_i
    subtotal = quantity * product.price
    tax = quantity * product.tax
    total = subtotal + tax
    order = Order.new(user_id: current_user.id, product_id: product.id, subtotal: subtotal, tax: tax, total: total, quantity: quantity)
    if order.save
      flash[:success] = "Order Created"
      redirect_to "/orders/#{order.id}"
    else
      flash[:danger] = "Order NOT Created"
      redirect_to "/products/#{product.id}"
    end
    
  end

  def show
    @order = Order.find_by(id: params[:id])
    
  end
end
