class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :ip_address
      t.string :session
      t.belongs_to :user
      t.timestamps
    end
  end
end
