require 'test_helper'

class BusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus = buses(:one)
  end

  test "should get index" do
    get buses_url
    assert_response :success
  end

  test "should get new" do
    get new_bus_url
    assert_response :success
  end

  test "should create bus" do
    assert_difference('Bus.count') do
      post buses_url, params: { bus: { arrival_1: @bus.arrival_1, arrival_2: @bus.arrival_2, bus_code: @bus.bus_code, distance: @bus.distance, fare: @bus.fare, link_route: @bus.link_route, phone: @bus.phone, quantity_trip: @bus.quantity_trip, range_of_bus: @bus.range_of_bus, route: @bus.route, trip_spacing: @bus.trip_spacing, trip_time: @bus.trip_time, type_of_operation: @bus.type_of_operation, undertaking_unit: @bus.undertaking_unit, uptime: @bus.uptime } }
    end

    assert_redirected_to bus_url(Bus.last)
  end

  test "should show bus" do
    get bus_url(@bus)
    assert_response :success
  end

  test "should get edit" do
    get edit_bus_url(@bus)
    assert_response :success
  end

  test "should update bus" do
    patch bus_url(@bus), params: { bus: { arrival_1: @bus.arrival_1, arrival_2: @bus.arrival_2, bus_code: @bus.bus_code, distance: @bus.distance, fare: @bus.fare, link_route: @bus.link_route, phone: @bus.phone, quantity_trip: @bus.quantity_trip, range_of_bus: @bus.range_of_bus, route: @bus.route, trip_spacing: @bus.trip_spacing, trip_time: @bus.trip_time, type_of_operation: @bus.type_of_operation, undertaking_unit: @bus.undertaking_unit, uptime: @bus.uptime } }
    assert_redirected_to bus_url(@bus)
  end

  test "should destroy bus" do
    assert_difference('Bus.count', -1) do
      delete bus_url(@bus)
    end

    assert_redirected_to buses_url
  end
end
