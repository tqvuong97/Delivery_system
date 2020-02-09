class RemoveCreatedAtAndUpdatedAtFromBuses < ActiveRecord::Migration[5.2]
  def change
    remove_column :buses, :created_at
    remove_column :buses, :updated_at
  end
end
