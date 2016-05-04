class Variation < ActiveRecord::Base
	belongs_to :product
	has_many :order_items 
	validates :variation_sku, uniqueness: true

	searchable do
		text :variation_name     
	end

end