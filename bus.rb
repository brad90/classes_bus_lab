class Bus

  attr_reader :route_number, :destination, :person

  def initialize(route_number, destination, passengers = [])
    @route_number = route_number
    @destination = destination
    @passengers = passengers
  end

  def drive_sound()
    return "Brum brum"
  end

  def passenger_count()
    return @passengers.length()
  end

  def add_a_passenger(person)
    @passengers << person
  end

  def drop_off_passenger(person)
    @passengers.delete(person)
  end

  def destroy_passengers()
    @passengers.clear()
  end


end
