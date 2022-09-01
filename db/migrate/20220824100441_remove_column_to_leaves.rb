class RemoveColumnToLeaves < ActiveRecord::Migration[5.2]
  def change
    remove_column :leaves, :status, :boolean
  end
end
