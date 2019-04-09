require("minitest/autorun")
require("minitest/rg")

require_relative("../bus_stop.rb")
require_relative("../person.rb")


class BusStopTest < MiniTest::Test

  def setup
    @person1 = Person.new("bob2", 80)
    @bus_stop = BusStop.new('Pilrig Street')
  end

  def test_for_bus_stop_name
    assert_equal('Pilrig Street', @bus_stop.name)
  end

  def test_add_a_passenger_to_queue
    @bus_stop.add_a_passenger(@person1)
    assert_equal(1, @bus_stop.queue_count)
  end

end
