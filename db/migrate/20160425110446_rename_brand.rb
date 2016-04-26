class RenameBrand < ActiveRecord::Migration
  def change
  	rename_column(:products, :brand, :product_brand)
  end
end
