class AddProductNameToOrderItem < ActiveRecord::Migration
  def change
  	add_column :order_items, :product_name, :string
  	add_column :order_items, :variation_name, :string
  	add_column :order_items, :variation_price, :decimal
  end
end
