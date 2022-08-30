class AddColumnsToAttendanceReport < ActiveRecord::Migration[5.2]
  def change
    add_column :attendance_reports, :attendance, :boolean
    add_column :attendance_reports, :time, :datetime
    add_column :attendance_reports, :status, :integer
  end
end
