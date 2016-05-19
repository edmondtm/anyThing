class AddColumnToOrder2 < ActiveRecord::Migration
  def change
  	add_column :orders, :handphone, :string
  end
end
