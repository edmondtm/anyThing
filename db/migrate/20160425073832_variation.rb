class Variation < ActiveRecord::Migration
  def change
  	create_table :variations do |t|
    	t.string :variation_name, :variation_sku, :variation_delivery
    	t.decimal :variation_price, :precision => 10, :scale => 2 
    	t.belongs_to :product, index: true
    	t.timestamps
    end
  end
end
