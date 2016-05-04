class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_status_id
      t.string :order_number
      t.belongs_to :user
      t.belongs_to :vendor
      t.string :order_validity
      t.string :order_delivery
      t.timestamps
    end
  end
end
