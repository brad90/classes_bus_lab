require("minitest/autorun")
require("minitest/rg")

require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup
    @person1 = Person.new("bob", 80)
    @bus1 = Bus.new(22, "Ocean Terminal")

  end

  def test_bus_route_number
    assert_equal(22, @bus1.route_number)
  end

  def test_bus_final_destination
    assert_equal("Ocean Terminal", @bus1.destination)
  end

  def test_drive_method_sound
    assert_equal("Brum brum", @bus1.drive_sound)
  end

  def test_passenger_count
    assert_equal(0, @bus1.passenger_count)
  end

  def test_add_a_passenger
    @bus1.add_a_passenger(@person1)
    assert_equal(1, @bus1.passenger_count)
  end

  def test_drop_off_passenger
    bus2 = Bus.new(23, "George Street", ["bob", "steve"])
    bus2.drop_off_passenger("steve")
    assert_equal(1, bus2.passenger_count)
  end

  def test_destroy_passengers
    bus2 = Bus.new(23, "George Street", ["bob", "steve"])
    bus2.destroy_passengers()
    assert_equal(0, bus2.passenger_count)
  end

end
