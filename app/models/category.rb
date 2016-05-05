class Category < ActiveRecord::Base
	has_many :products
	has_many :subcategories
	validates :category_name, presence: true
	validates :category_name, uniqueness: true 

	searchable do
		text :category_name     
	end

end
