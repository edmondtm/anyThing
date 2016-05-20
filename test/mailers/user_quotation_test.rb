require 'test_helper'

class UserQuotationTest < ActionMailer::TestCase
  test "user_quotation" do
    mail = UserQuotation.user_quotation
    assert_equal "User quotation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
