class UserQuotation < ApplicationMailer
	default from: "edmondtm@anythingscientific.com"

  def user_quotation(order)
    @order = order
    mail to: "edmondtm@gmail.com", subject: "Testing anyThing Mailer"
  end
end
