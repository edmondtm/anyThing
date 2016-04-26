class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :product_name, :product_category, :product_subcategory, :product_sku, :product_delivery, :product_price, :brand
    	t.text :product_description
    	t.timestamps
    end
  end
end
