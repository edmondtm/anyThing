class Product < ActiveRecord::Base
	has_one :subcategory through :category
	has_one :category
	
	belongs_to :vendor
	validates :product_name, presence: true
	validates :product_sku, presence: true
	validates :product_description, presence: true
	validates :product_brand, presence: true

end