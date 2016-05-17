class CartController < ApplicationController
 
  def index
         @title = "View Shopping Cart"
         @session = 
         @order = Order.find(session[:order_id])
         @order_item = @order.order_items.all

          
         #@product_name = Product.find(@cart.product_id.first).all
         
  end

  def show
    @order_items = current_order.order_items
  end

  def delivery
  end

  def login
  end

  def payment
  end

  def shipping
  end

end
