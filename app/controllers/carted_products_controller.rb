class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @order = current_user.orders.find_by(completed: false)
    unless @order
      flash[:warning] = "You don't have any products in your shopping cart"
      redirect_to "/"
    end 
  end

  def create
    # Check the orders table for any orders that belong to the current_user and has an order that's open (aka completed: false)
    orders = Order.where("user_id = ? AND completed = ?", current_user.id, false)
    if orders.first
      order = orders.first
    else
      order = Order.new(user_id: current_user.id, completed: false)
      order.save
    end

    carted_product = CartedProduct.new(order_id: order.id, product_id: params[:product_id], quantity: params[:quantity])
    carted_product.save
    redirect_to "/carted_products"
  end
end