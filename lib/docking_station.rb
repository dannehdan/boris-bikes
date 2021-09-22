require './lib/bike.rb'

class DockingStation

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  # def list_docked_bikes
  def bike
    @bike
  end

end