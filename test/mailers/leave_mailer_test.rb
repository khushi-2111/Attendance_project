require 'test_helper'

class LeaveMailerTest < ActionMailer::TestCase
  test "leave_created" do
    mail = LeaveMailer.leave_created
    assert_equal "Leave created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
