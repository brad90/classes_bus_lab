class BusStop

attr_reader :name
attr_accessor :queue

def initialize(name, queue = [])
  @name = name
  @queue = queue
end

def bus_stop_name
  return @name
end

def queue_count()
  return @queue.length()
end

def add_a_passenger(person)
  @queue << person
end


end
