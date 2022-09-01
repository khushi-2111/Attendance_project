class Leave < ApplicationRecord
  belongs_to :user
  validates :start_date, :end_date, :reason, :leave_type, :status, presence: true
  enum status: [:Pending, :Approval, :Rejected]
  validates :created_at, uniqueness: true
end
 