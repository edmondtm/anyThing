class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :order_status
      	t.belongs_to :variation
      	t.integer :order_quantity
      	t.decimal :product_unit_price 
      	t.decimal :subtotal
      	t.belongs_to :order
      t.timestamps 
    end
  end
end
