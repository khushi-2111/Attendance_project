class User < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable, :lockable

  # has_many :attendance_reports
  has_many :workdays
  has_many :leaves
         
  enum role: [:admin, :hr, :employee]
   
  def assign_role
    if self.user_role == "admin"
      self.role = Role.find_by name: 'admin' if role.nil?
    elsif self.user_role == "hr"
      self.role = Role.find_by name: 'hr' if role.nil?
    else
      self.role = Role.find_by name: 'employee' if role.nil?
    end
  end

  def current_workday
    workdays.find_by(date: Date.today)
  end

   mount_uploader :image, ImageUploader
end
