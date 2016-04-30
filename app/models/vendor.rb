class Vendor < ActiveRecord::Base
  belongs_to :admin

  has_many :products
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  searchable do
		text :vendor_name     
	end
end
