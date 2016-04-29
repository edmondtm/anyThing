class Product < ActiveRecord::Base
	
	belongs_to :category
	belongs_to :subcategory

	has_many :variations	
	belongs_to :vendor
	validates :product_name, presence: true
	validates :product_description, presence: true
	validates :product_brand, presence: true

end