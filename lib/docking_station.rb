require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' unless bikes.length > 0
    bikes
  end

  def dock(bike)
    fail 'Station is at full capacity' if bikes.length >= 20
    bikes << bike
  end
end

# docking_station = DockingStation.new
# docking_station.dock(Bike.new)
# docking_station.dock(Bike.new)

