class CreateLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :leaves do |t|
      t.integer :user_id
      t.boolean :status
      t.date :start_date
      t.date :end_date
      t.string :reason
      t.string :leave_type

      t.timestamps
    end
  end
end
