class CreateWorkdays < ActiveRecord::Migration[5.2]
  def change
    create_table :workdays do |t|
      t.integer :user_id
      t.string :day
      t.date :date
      t.time :intime
      t.time :outtime
      t.boolean :attendance
      t.integer :status

      t.timestamps
    end
  end
end
