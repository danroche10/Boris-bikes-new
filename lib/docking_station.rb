require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
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
    bikes.length >= 20 ? true : false
  end
end

