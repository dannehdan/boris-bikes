require './lib/bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    raise "No bikes"
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end