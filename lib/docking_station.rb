require './lib/bike.rb'

class DockingStation

  attr_reader :bike, :bike_storage

  def initialize
    @bike_storage = []
  end

  def release_bike
    fail "No bikes available" if @bike_storage.empty?
    @bike_storage.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bike_storage << bike
  end

  private

  def full?
    @bike_storage.count >= 20
  end
end