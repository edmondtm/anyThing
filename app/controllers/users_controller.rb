class UsersController < ApplicationController
	def index
		@title = "My Account"
		@user = current_user

	end

	def edit
		@user = current_user		
		if params[:id] == @user.id
			@title = "User Information"
		else
			flash[alert] = "Security Breach !!!"
			redirect_to :back
		end
	end

end
