class QuotationMailer < ApplicationMailer
	def quotation_email(user) 
		@order = Order.find(session[:order_id])
	    @order_item = @order.order_items.all
	    @user = User.find(@order.user_id)
	    mail(to: edmondtm@gmail.com, subject: 'Welcome to My Awesome Site') #change to: once user model is setup
	end
end
