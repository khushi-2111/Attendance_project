class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendance_reports, :status, :string
    remove_column :attendance_reports, :attendance, :string
  end
end
