class Variation < ActiveRecord::Base
	belongs_to :product
	has_many :order_items 
	validates :variation_sku, uniqueness: true
	has_many :cart_items
	searchable do
		text :variation_name     
	end

	def option_in_show
		"#{variation_name} - RM #{variation_price}"
	end

end

