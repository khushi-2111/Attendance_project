class CreateWorklogs < ActiveRecord::Migration[5.2]
  def change
    create_table :worklogs do |t|
      t.integer :user_id
      t.integer :workday_id
      t.time :intime
      t.time :outtime
      t.time :total_time

      t.timestamps
    end
  end
end
