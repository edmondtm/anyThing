class OrdersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def update
    @order = current_order
    if ((Rails.application.routes.recognize_path(request.referrer)[:action]) == "shipping")
      @order.update_attributes(order_shipping_params)
      flash[:notice] = "Shipping Address Confirmed"
      redirect_to cart_payment_path
    elsif ((Rails.application.routes.recognize_path(request.referrer)[:action]) == "payment")

    else
      redirect_to root_path
    end
    

  end

  def show
  end

  def patch
   
  end

  def destroy
  end

  private
    def order_shipping_params
        params.require(:order).permit(:user_name , :user_company, :user_department, :user_address1, :user_city, :user_postcode, :user_state, :handphone, :special_instruction)
    end
end
