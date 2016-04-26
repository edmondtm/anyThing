class AddForeignKeyCategory < ActiveRecord::Migration
  def change
  	add_reference :categories, :product, index: true, foreign_key: true
  	
  end
end
