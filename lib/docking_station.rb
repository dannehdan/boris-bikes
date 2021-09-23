require './lib/bike.rb'

class DockingStation

  DOCKING_CAPACITY = 20
  attr_reader :bike_storage, :capacity

  def initialize(capacity=DOCKING_CAPACITY)
    @capacity = capacity
    @bike_storage = []
  end

  def release_bike
    fail "No bikes available" if empty?
    @bike_storage.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bike_storage << bike
  end

  private

  def full?
    @bike_storage.count >= @capacity
  end

  def empty?
    @bike_storage.empty?
  end
end