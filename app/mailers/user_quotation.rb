class UserQuotation < ApplicationMailer
	default from: "edmondtm@anythingscientific.com"

def send_quotation
	user_quotation(@order)
end
	handle_asynchronously :send_quotation, :priority => 1

  def user_quotation(order)
    @order = order
    mail to: "edmondtm@gmail.com", subject: "Testing anyThing Mailer"
  end
end
