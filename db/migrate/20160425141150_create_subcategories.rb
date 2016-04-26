class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
    	t.subcategory_name :string
      t.timestamps null: false
    end
  end
end
