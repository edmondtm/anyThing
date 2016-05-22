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
      
      if (params[:quote] == "single")
        UserQuotation.delay.user_quotation(@order)
        flash[:notice] = "Quote requested sent to your email"
        #todo change order_status_id to 2
        #todo delete session[:order_id]
        #todo change current_order to delete session[:order_id] if order_status_id > 1 and create another session[:order_id]
        redirect_to root_path
      elsif (params[:quote] == "multiple")
        flash[:notice] = "Multiple Quote not developed yet"
        redirect_to :back
      else
        flash[:notice] = "No such options "
        redirect_to :back
      end
    else
      redirect_to :back
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
