require 'station'

describe Station do
    let(:name){ double :name }
    let(:zone){ double :zone }
    it { expect(Station).to respond_to(:new).with(2).arguments }

    it 'will return name' do
        station = Station.new(name, zone)
        expect(station.name).to eq name
    end

    it 'will return zone' do
        station = Station.new(name, zone)
        expect(station.zone).to eq zone
    end
end