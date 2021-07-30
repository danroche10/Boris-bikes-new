require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize( capacity = DEFAULT_CAPACITY )
    @bikes = []
    @capacity = capacity 
  end

  def release_bike
    fail 'No bikes available' unless empty?
    bikes
  end

  def dock(bike)
    fail 'Station is at full capacity' if full?
    bikes << bike
  end

  private

  def empty?
    bikes.length > 0 ? true : false
  end

  def full?
    bikes.length >= DEFAULT_CAPACITY ? true : false
  end
end

docking_station = DockingStation.new
puts docking_station.capacity

