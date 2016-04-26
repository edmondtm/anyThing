class AddColumnVendor < ActiveRecord::Migration
  def change
  	add_column :vendors, :vendor_company, :string
  	add_column :vendors, :vendor_address1, :string
  	add_column :vendors, :vendor_address2, :string
  	add_column :vendors, :vendor_city, :string
  	add_column :vendors, :vendor_state, :string
  	add_column :vendors, :vendor_zip, :string
  	add_column :vendors, :vendor_pic, :string
  	add_column :vendors, :vendor_phone, :string
  	add_column :vendors, :vendor_mobile, :string
  	add_column :vendors, :vendor_website, :string

  	add_column :users, :user_name, :string
  	add_column :users, :user_company, :string
  	add_column :users, :user_shipping_address1, :string
  	add_column :users, :user_shipping_address2, :string
  	add_column :users, :user_shipping_city, :string
  	add_column :users, :user_shipping_state, :string
  	add_column :users, :user_shipping_zip, :string

  	add_column :users, :user_billing_address1, :string
  	add_column :users, :user_billing_address2, :string
  	add_column :users, :user_billing_city, :string
  	add_column :users, :user_billing_state, :string
  	add_column :users, :user_billing_zip, :string
  	
  	add_column :users, :user_phone, :string
  	add_column :users, :user_mobile, :string
  	
  end
end
