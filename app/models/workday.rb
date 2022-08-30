class Workday < ApplicationRecord
  belongs_to :user
  has_many :worklogs

  enum status: [:Leave, :Half_Day, :Early_Going, :Full_Day]
end
