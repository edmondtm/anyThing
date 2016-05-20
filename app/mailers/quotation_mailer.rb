class QuotationMailer < ApplicationMailer
	def quotation_email(user) 
		@order = Order.find(session[:order_id])
	    @order_item = @order.order_items.all
	    @user = User.find(@order.user_id)
	    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
	end
end
