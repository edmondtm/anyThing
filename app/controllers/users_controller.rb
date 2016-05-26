class UsersController < ApplicationController
	def index
		if user_signed_in?
			@title = "My Account"
			@user = current_user
		else
			redirect_to new_user_session_path
		end
	end

	def edit
		@user = current_user		
		@title = "User Information"
		@state = State.all
		
	end

	def update
		@user = current_user
		@user.update_attributes(user_params)
		flash[:notice] = "User Info Updated"
		redirect_to :back
	end

	def after_sign_in_path_for(user) 
      	users_path
  	end

  	private
	  	def user_params
	   		params.require(:users).permit(:user_name, :user_company, :user_department, :user_shipping_address1, :user_shipping_address2, :user_shipping_city, :user_shipping_state, :user_shipping_zip, :user_mobile, :user_phone, :user_billing_address1, :user_billing_address2, :user_billing_city, :user_billing_state, :user_billing_zip)
	    end

end
