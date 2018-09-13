class Location
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class Trip
  def initialize
    @stops = []
  end

  def destination(destination)
    @stops.push(destination.name)
  end

  def itinerary
    puts "Began trip."
    @stops.each_cons(2) do |trip|
      puts "Traveled from #{trip[0]} to #{trip[1]}"
    end
    puts "Completed trip."
  end
end

Toronto= Location.new('Toronto')
Ottawa = Location.new('Ottawa')
Montreal = Location.new('Montreal')
Quebec_City = Location.new('Quebec City')
Halifax = Location.new('Halifax')
St_Johns = Location.new('St. John\'s')

trip = Trip.new
trip.destination(Toronto)
trip.destination(Ottawa)
trip.destination(Montreal)
trip.destination(Quebec_City)
trip.destination(Halifax)
trip.destination(St_Johns)

trip.itinerary
