# Preview all emails at http://localhost:3000/rails/mailers/leave_mailer
class LeaveMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/leave_mailer/leave_created
  def leave_created
    LeaveMailer.leave_created
  end

end
