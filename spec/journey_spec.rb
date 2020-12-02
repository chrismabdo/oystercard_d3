require 'journey'

describe Journey do
    
    let(:entry_station) { double :entry_station }
    let(:exit_station) { double :exit_station }
    it { expect(Journey).to respond_to(:new).with(1).argument }

    it { expect(subject).to respond_to(:complete) }

    it 'should remember the entry station' do
      journey = Journey.new(entry_station)
     expect(journey.entry_station).to eq entry_station
   end

   describe "#touch_out" do
   it 'should change journey status to true' do
    journey = Journey.new(entry_station)
    journey.finish(exit_station)
    expect(journey.complete).to eq true
   end

   it 'should change journey status to false' do
    journey = Journey.new(entry_station)
    expect(journey.complete).to eq false
   end
  end
end



