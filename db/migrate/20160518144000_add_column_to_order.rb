class AddColumnToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :user_name, :string
  	add_column :orders, :user_company, :string
  	add_column :orders, :user_department, :string
  	add_column :orders, :user_address1, :string
  	add_column :orders, :user_address2, :string
  	add_column :orders, :user_city, :string
  	add_column :orders, :user_state, :string
  	add_column :orders, :user_country, :string
  	add_column :orders, :special_instruction, :string
  end
end
