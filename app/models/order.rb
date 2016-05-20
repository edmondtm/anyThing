class Order < ActiveRecord::Base
	# validates :order_status, presence: true
	# validates :order_number, presence: true
	# 	validates :order_number, uniqueness: true
	# validates :order_validity, presence: true

	belongs_to :user
	belongs_to :order_status
	has_many :order_items
	has_one :state
	has_one :country

	before_create :set_order_status
	before_save :update_subtotal

	after_destroy :update_subtotal	

	def subtotal
		if order_items.count > 0 
			order_items.sum(:order_item_total_price)
		else
			0
		end
	end

	def update_subtotal
		self[:order_subtotal] = subtotal
	end

	

	private
		def set_order_status
			self.order_status_id = 1
		end

end
