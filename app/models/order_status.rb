class OrderStatus < ActiveRecord::Base
	has_many :orders
	validates :order_status, uniqueness: true
end
