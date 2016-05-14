class Order < ActiveRecord::Base
	# validates :order_status, presence: true
	# validates :order_number, presence: true
	# 	validates :order_number, uniqueness: true
	# validates :order_validity, presence: true

	belongs_to :user
	belongs_to :order_status
	has_many :order_items
	before_create :set_order_status
	#before_save :update_subtotal

	#def subtotal
#		order_items.collect {|oi| oi.valid? ? (oi.order_quantity * oi.order_unit_price) : 0	}.sum
#	end

#	private
#		def set_order_status
#			self.order_status_id = 1
#		end

#		def update_subtotal
#			self[:subtotal] = subtotal
#		end
	

end
