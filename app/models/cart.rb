class Cart < ActiveRecord::Base
	belongs_to :user
	has_many :order_items
	has_one :order
	
end
