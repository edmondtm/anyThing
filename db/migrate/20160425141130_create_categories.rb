class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.category_name :string
      t.timestamps null: false
    end
  end
end
