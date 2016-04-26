class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :categories, :products_id, :integer
  end
end
