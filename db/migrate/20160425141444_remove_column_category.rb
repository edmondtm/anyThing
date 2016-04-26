class RemoveColumnCategory < ActiveRecord::Migration
  def change
  	remove_column :products, :product_category, :string
  	remove_column :products, :product_subcategory, :string
  end
end
