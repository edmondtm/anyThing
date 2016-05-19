class AddColumnPostcodeToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :user_postcode, :string
  end
end
