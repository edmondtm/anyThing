class OrderItemsController < ApplicationController
  def create
  	binding.pry
    @order = current_order
  	@order_item = @order.order_items.new(order_item_params)
  	if @order.save
      render :create
      session[:order_id] = @order.id
    else
      render :create
    end
  	
  end

  def update
  	@order = current_order
  	@order_item = @order.order_items.find(params[:id])
  	@order_item.update_attributes(order_item_params)
  	@order_items = @order.order_items
  end

  def destroy
  	@order = current_order
  	@order_item = @order.order_items.find(params[:id])
  	@order_items.destroy
  	@order_items = @order.order_items
  end

  private
  	def order_item_params
  		params.require(:order_item).permit(:variation_id, :order_quantity)
  		
  	end
end
