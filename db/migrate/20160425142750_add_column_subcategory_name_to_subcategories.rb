class AddColumnSubcategoryNameToSubcategories < ActiveRecord::Migration
  def change
  	add_column :subcategories, :subcategory_name, :string
  end
end
