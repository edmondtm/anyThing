class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)

  	if @order.save
      session[:order_id] = @order.id
      flash[:notice] = "Items Successfully Added to Cart"
      redirect_to :back
    else
      render :create  
    end
  	
  end

  def update
  	@order = current_order
  	@order_item = @order.order_items.find(params[:id])
  	@order_item.update_attributes(order_item_params)
  	@order_items = @order.order_items
    redirect_to :back
  end

  def destroy
  	#@order = current_order
  	@order_item = OrderItem.find(params[:id])
  	@order_item.destroy
  	redirect_to :back 
  end

  private
  	def order_item_params
    		params.require(:order_item).permit(:product_id, :product_name, :variation_id, :variation_name, :order_quantity, :variation_price, :order_item_total_price)
    end
end

