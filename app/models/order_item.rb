class OrderItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :variation
	belongs_to :product
	
	validates :order_id, presence: true
	validates :order_quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
	validates :product_id, presence: true, numericality: { only_integer: true, greater_than: 0 }
	validates :variation_id, presence: true, numericality: { only_integer: true, greater_than: 0 }
	
	before_save :update_variation_price

	def update_variation_price
		self.variation_price = variation.variation_price
	end

	def update_product_name
		self.product_name = product.product_name
	end

	def update_variation_name
		self.variation_name = variation.variation_name
	end
	
	



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
