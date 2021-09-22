require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if there are no bikes' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

  end

  it 'provides a working bike' do
    bike = Bike.new
    subject.dock(bike)

    expect(subject.release_bike).to respond_to :working?
  end

  describe '#dock' do
    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'raises an error if the docking station is full' do 
      subject.dock(Bike.new)

      expect { subject.dock(Bike.new)}.to raise_error "Docking station full"
    end
  end

  it 'returns list of docked bikes' do
    bike = Bike.new
    subject.dock(bike)

    expect(subject.bike).to eq bike
  end

end