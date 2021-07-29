require_relative 'bike'

class DockingStation
  def release_bike
    # returns an instance of the bike class 
    Bike.new
  end
end