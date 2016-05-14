class OrderItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :variation
	#validates :order_id, presence: true
	#validates :order_quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
	# validates :subtotal, presence: true

	#validate :product_present
	#validate :order_present

	#before_save :order_present

	#before_save :finalize

	#def unit_price
	#	if persisted?
	#		self[:unit_price]
	#	else
	#		variations.variation_price
	#	end
	#end

#	def total_price
 #   	unit_price * order_quantity
#  	end

#private
#  def product_present
#    if variation.nil?
#      errors.add(:variation, "is not valid or is not active.")
#    end
#  end

#  def order_present
#    if order.nil?
#      errors.add(:order, "is not a valid order.")
#    end
#  end

#  def finalize
#    self[:order_unit_price] = unit_price
#    self[:order_total_price] = order_quantity * self[:order_unit_price]
#  end


end
