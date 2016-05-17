class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      
      	t.belongs_to :variation
      	t.integer :order_quantity
      	t.decimal :order_total_price, :precision => 10, :scale => 2
      	t.belongs_to :order
      t.timestamps 
    end
  end
end
