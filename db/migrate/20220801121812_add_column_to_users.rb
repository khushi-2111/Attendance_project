class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string
    add_column :users, :contact_number, :string
    add_column :users, :address, :string
    add_column :users, :designation, :string
  end
end
