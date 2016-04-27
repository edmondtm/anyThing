class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :product_name, :product_sku, :product_delivery, :product_price, :product_brand
    	t.text :product_description
    	t.belongs_to :category
    	t.belongs_to :subcategory
    	t.timestamps
    end
  end
end
