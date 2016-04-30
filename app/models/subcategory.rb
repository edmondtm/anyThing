class Subcategory < ActiveRecord::Base
	has_one :category
	has_many :products
	validates :subcategory_name, presence: true
	validates :subcategory_name, uniqueness: true

	searchable do
		text :subcategory_name     
	end


end
