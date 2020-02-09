class AddFeeToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :fee_ship, :bigint
  end
end
