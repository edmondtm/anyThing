class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.belongs_to :variation
      t.integer :quantity
      t.belongs_to :cart
      t.timestamps 
    end
  end
end
