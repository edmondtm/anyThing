class UserQuotation < ApplicationMailer
	default from: "edmondtm@anythingscientific.com"

def send_quotation
	user_quotation(@order)
end
	#handle_asynchronously :send_quotation, :priority => 1

  def user_quotation(order)
    @order = Order.find(order)
    @order_item = @order.order_items.all 

    mail to: "edmondtm@gmail.com", subject: "Testing anyThing Mailer"
  end
end
