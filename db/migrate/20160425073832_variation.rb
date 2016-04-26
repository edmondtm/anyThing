class Variation < ActiveRecord::Migration
  def change
  	create_table :variations do |t|
    	t.string :variation_name, :variation_sku, :variation_delivery, :variation_price
    	t.belongs_to :product, index: true
    	t.timestamps
    end
  end
end
