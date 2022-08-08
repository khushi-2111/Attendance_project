class AddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :attendance_reports, :status, :integer
    add_column :attendance_reports, :attendance, :boolean, default: true
    add_column :attendance_reports, :total_time, :time
  end
end
