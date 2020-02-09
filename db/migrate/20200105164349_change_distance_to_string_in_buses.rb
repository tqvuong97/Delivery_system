class ChangeDistanceToStringInBuses < ActiveRecord::Migration[5.2]
  def change
    change_column :buses, :distance, :text
  end
end
