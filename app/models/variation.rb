class Variation < ActiveRecord::Base
	belongs_to :product
	validates :variation_sku, uniqueness: true
end