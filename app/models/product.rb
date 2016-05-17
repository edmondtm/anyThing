class Product < ActiveRecord::Base
	
	belongs_to :category
	belongs_to :subcategory

	has_many :variations
	has_many :order_items	
	belongs_to :vendor
	validates :product_name, presence: true
	validates :product_description, presence: true
	validates :product_brand, presence: true

	searchable do
		string :product_brand
		text :product_description
		text :product_name
		string :product_delivery
		integer :id
		integer :vendor_id
		integer :category_id		
		integer :subcategory_id		
	end

	results = search.results # => Array with 30 Post elements

	search.total           # => 60

	results.total_pages    # => 2
	results.first_page?    # => true
	results.last_page?     # => false
	results.previous_page  # => nil
	results.next_page      # => 2
	results.out_of_bounds? # => false
	results.offset         # => 0
end


  