class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_order
  	if !session[:order_id].nil?
  		Order.find(session[:order_id])
  	  # TODO if order_status_id >1 then create another order because it means the cart have been checked out.
    else
  		Order.create
      
  	end
  end



end
