class Category < ActiveRecord::Base
	belongs_to :product
	has_one :subcategories
end
