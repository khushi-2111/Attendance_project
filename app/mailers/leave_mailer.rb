class LeaveMailer < ApplicationMailer

  def leave_created(user)
    @user = user
    mail( to: @user.email, subject: "Leave Confirmation Instraction")
  end
end
