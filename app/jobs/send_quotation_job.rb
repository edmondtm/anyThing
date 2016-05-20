class SendQuotationJob < ActiveJob::Base
  queue_as :send_quotation

  def deliver(*send_quotation)
    # Do something later
  end
end
