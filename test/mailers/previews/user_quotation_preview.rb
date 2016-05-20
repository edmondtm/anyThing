# Preview all emails at http://localhost:3000/rails/mailers/user_quotation
class UserQuotationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_quotation/user_quotation
  def user_quotation
    UserQuotation.user_quotation
  end

end
