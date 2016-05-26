class AddUserDepartmentToUser < ActiveRecord::Migration
  def change
  	add_column :users, :user_department, :string
  end
end
