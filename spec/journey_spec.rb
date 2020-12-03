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

    it 'has a penalty fare by default' do
      expect(subject.fare).to eq Journey::PENALTY_FARE
    end

  describe "#exit a journey" do
   it 'should change journey status to true' do
    journey = Journey.new(entry_station)
    journey.finish(exit_station)
    expect(journey.complete).to eq true
   end

   it 'should change journey status to false' do
    journey = Journey.new(entry_station)
    expect(journey.complete).to eq false
   end

   it "knows if a journey is not complete" do
    expect(subject).not_to be_complete
   end

   it "returns itself when exiting a journey" do
    expect(subject.finish(exit_station)).to eq(subject)
   end

   it "returns a penalty fare if no exit station given" do
    expect(subject.fare).to eq Journey::PENALTY_FARE
   end
  
   it 'calculates a fare' do
    journey = Journey.new(entry_station)
    journey.finish(exit_station)
    expect(journey.fare).to eq 1
   end

   it "knows if a journey is complete" do
    journey = Journey.new(entry_station)
    journey.finish(exit_station)
    expect(journey).to be_complete
  end
end
end



