require 'test_helper'

class OrderNotifierMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifierMailer.received
    assert_equal "Received", mail.subject
    assert_equal ["conder@ukr.net"], mail.to
    assert_equal ["conder@ukr.net"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifierMailer.shipped
    assert_equal "Shipped", mail.subject
    assert_equal ["conder@ukr.net"], mail.to
    assert_equal ["conder@ukr.net"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
