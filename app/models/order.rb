class Order < ActiveRecord::Base
	validates :order_statuses, presence: true
	validates :order_number, presence: true
	validates :order_number, uniqueness: true
	validates :order_validity, presence: true

	belongs_to :user
	belongs_to :vendor
	belongs_to :order_statuses
	has_many :order_items
end
