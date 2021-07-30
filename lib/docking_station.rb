require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :default_capacity

  def initialize
    @bikes = []
    @default_capacity = DEFAULT_CAPACITY 
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

