class Variation < ActiveRecord::Base
	belongs_to :product
	validates :variation_sku, uniqueness: true

	searchable do
		text :variation_name     
	end

end