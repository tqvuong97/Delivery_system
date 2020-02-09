class CreateBuses < ActiveRecord::Migration[5.2]
  def change
    create_table :buses do |t|
      t.text :link_route
      t.text :bus_code
      t.text :route
      t.text :arrival_1
      t.text :arrival_2
      t.text :undertaking_unit
      t.text :phone
      t.text :type_of_operation
      t.float :distance
      t.text :range_of_bus
      t.text :uptime
      t.text :fare
      t.text :quantity_trip
      t.text :trip_time
      t.text :trip_spacing

      t.timestamps
    end
  end
end
