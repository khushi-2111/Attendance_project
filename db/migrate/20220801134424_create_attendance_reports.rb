class CreateAttendanceReports < ActiveRecord::Migration[5.2]
  def change
    create_table :attendance_reports do |t|
      t.string :attendance
      t.integer :user_id
      t.string :status
      t.date :date

      t.timestamps
    end
  end
end
