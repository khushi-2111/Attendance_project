class AddColumn13ToLeaves < ActiveRecord::Migration[5.2]
  def change
    add_column :leaves, :status, :integer
  end
end
