require "application_system_test_case"

class BusesTest < ApplicationSystemTestCase
  setup do
    @bus = buses(:one)
  end

  test "visiting the index" do
    visit buses_url
    assert_selector "h1", text: "Buses"
  end

  test "creating a Bus" do
    visit buses_url
    click_on "New Bus"

    fill_in "Arrival 1", with: @bus.arrival_1
    fill_in "Arrival 2", with: @bus.arrival_2
    fill_in "Bus code", with: @bus.bus_code
    fill_in "Distance", with: @bus.distance
    fill_in "Fare", with: @bus.fare
    fill_in "Link route", with: @bus.link_route
    fill_in "Phone", with: @bus.phone
    fill_in "Quantity trip", with: @bus.quantity_trip
    fill_in "Range of bus", with: @bus.range_of_bus
    fill_in "Route", with: @bus.route
    fill_in "Trip spacing", with: @bus.trip_spacing
    fill_in "Trip time", with: @bus.trip_time
    fill_in "Type of operation", with: @bus.type_of_operation
    fill_in "Undertaking unit", with: @bus.undertaking_unit
    fill_in "Uptime", with: @bus.uptime
    click_on "Create Bus"

    assert_text "Bus was successfully created"
    click_on "Back"
  end

  test "updating a Bus" do
    visit buses_url
    click_on "Edit", match: :first

    fill_in "Arrival 1", with: @bus.arrival_1
    fill_in "Arrival 2", with: @bus.arrival_2
    fill_in "Bus code", with: @bus.bus_code
    fill_in "Distance", with: @bus.distance
    fill_in "Fare", with: @bus.fare
    fill_in "Link route", with: @bus.link_route
    fill_in "Phone", with: @bus.phone
    fill_in "Quantity trip", with: @bus.quantity_trip
    fill_in "Range of bus", with: @bus.range_of_bus
    fill_in "Route", with: @bus.route
    fill_in "Trip spacing", with: @bus.trip_spacing
    fill_in "Trip time", with: @bus.trip_time
    fill_in "Type of operation", with: @bus.type_of_operation
    fill_in "Undertaking unit", with: @bus.undertaking_unit
    fill_in "Uptime", with: @bus.uptime
    click_on "Update Bus"

    assert_text "Bus was successfully updated"
    click_on "Back"
  end

  test "destroying a Bus" do
    visit buses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bus was successfully destroyed"
  end
end
