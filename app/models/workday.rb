class Workday < ApplicationRecord
  belongs_to :user
  has_many :worklogs

<<<<<<< Updated upstream
  enum status: [:Leave, :Half_Day, :Early_Going, :Full_Day]
=======
  enum status: [:leave, :half_day, :early_going, :full_day]
>>>>>>> Stashed changes
end
