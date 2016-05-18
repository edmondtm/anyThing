class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :order_items, :order_total_price, :order_item_total_price
  end
end
