class OrderItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :variations
	validates :order_id, presence: true
	validates :variation_sku_id, presence: true
	validates :order_quantity, presence: true
	validates :product_unit_price, presence: true
	validates :subtotal, presence: true
end
