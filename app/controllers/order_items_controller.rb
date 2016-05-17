class OrderItemsController < ApplicationController
  def create
    @order = current_order
    #@variation_price = Variation.find(params[:variation_id]).variation_price
    @order_item = @order.order_items.new(order_item_params)

    binding.pry
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
    		params.require(:order_item).permit(:product_id, :product_name, :variation_id, :variation_name, :order_quantity, :variation_price)
    end
end
