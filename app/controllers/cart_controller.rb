class CartController < ApplicationController
 
  def index
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
