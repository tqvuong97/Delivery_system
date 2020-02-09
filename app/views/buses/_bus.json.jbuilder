json.extract! bus, :id, :link_route, :bus_code, :route, :arrival_1, :arrival_2, :undertaking_unit, :phone, :type_of_operation, :distance, :range_of_bus, :uptime, :fare, :quantity_trip, :trip_time, :trip_spacing, :created_at, :updated_at
json.url bus_url(bus, format: :json)
