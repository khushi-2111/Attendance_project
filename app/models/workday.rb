class Workday < ApplicationRecord
    belongs_to :user
    has_many :worklog

    enum status: [:leave, :half_day, :early_going, :full_day]
end
