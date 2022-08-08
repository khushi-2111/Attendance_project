class AttendanceReport < ApplicationRecord
  belongs_to :user

  enum status: [:leave, :half_day, :early_going, :full_day]
end
