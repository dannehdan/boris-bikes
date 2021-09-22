require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'provides a working bike' do
    station = DockingStation.new
    bike = station.release_bike

    expect(bike).to respond_to :working?
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns list of docked bikes' do
    bike = Bike.new
    subject.dock(bike)

    expect(subject.bike).to eq bike
  end

  it 'raises an error if there are no bikes' do
    expect { subject.release_bike }. to raise_error "No bikes"
  end
end