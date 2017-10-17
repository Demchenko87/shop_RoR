class OrderNotifierMailer < ApplicationMailer
  default from: 'Sam Ruby <depot@example.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.received.subject
  #
  def received
    @greeting = "Hi"

    mail to: "conder@ukr.net"
  end

  def received(order)
    @order = order

    mail to: order.email, subject: 'подтверждение заказа'
  end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.shipped.subject
  #
  def shipped
    @greeting = "Hi2"

    mail to: "conder@ukr.net"
  end
end
