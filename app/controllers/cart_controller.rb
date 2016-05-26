class CartController < ApplicationController
 
  def index
    @title = "View Shopping Cart"
    @order = Order.find(current_order)
    @order_item = @order.order_items.all                      
  end

  def show
    @order_items = current_order.order_items
  end

  def shipping
    if (current_order.order_items.count > 0)
      if user_signed_in?
        @user = current_user
        @title = "Shipping Information"
        @order = current_order
        @state = State.all
      else
        redirect_to new_user_session_path
      end
    else
      redirect_to cart_index_path
    end
  end



  def payment
    if (current_order.order_items.count > 0)
      if ((Rails.application.routes.recognize_path(request.referrer)[:action]) == "shipping")
        if user_signed_in?
          @user = current_user
          @state = State.all
          @title = "Payment / Request Quotation"
          @order = current_order
          @order_item = @order.order_items.all
        else
          redirect_to :back
        end
      else
        flash[:notice] = "Please confirm shipping address"
        redirect_to cart_shipping_path
      end       
    else
      redirect_to cart_index_path
    end
  end

  def after_sign_in_path_for(user) 
      cart_shipping_path
  end

  


end
