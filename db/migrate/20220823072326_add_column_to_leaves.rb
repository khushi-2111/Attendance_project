class AddColumnToLeaves < ActiveRecord::Migration[5.2]
  def change
    add_column :leaves, :confirmation_token, :string
    add_column :leaves, :confirmed_at, :datetime
    add_column :leaves, :confirmation_send_at, :datetime
    add_column :leaves, :unconfirmed_email, :string
  end
end
