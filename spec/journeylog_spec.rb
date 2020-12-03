require "journeylog"
describe JourneyLog do
  let(:journey_class) { double :journey_class, new: journey }
  let(:entry_station) { double :entry_station }
  let(:journey) { double :journey }
  subject { described_class.new(journey_class: journey_class) }

  describe "#start" do
    it "will start the journey" do
      # journey = JourneyLog.new(journey_class)
      expect(journey_class).to receive(:new).with(entry_station: entry_station)
      subject.starts(entry_station)
    end
  end
end
