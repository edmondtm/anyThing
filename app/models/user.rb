class User < ActiveRecord::Base
  
  belongs_to :admin
  has_many :orders
  has_one :cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
end
