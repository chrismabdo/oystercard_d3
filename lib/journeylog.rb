require_relative "journey"
require_relative "oystercard"

class JourneyLog
  attr_reader :journey_class, :entry_station

  def initialize(journey_class = Journey.new(entry_station))
    @journey_class = journey_class
  end

  def starts(entry_station)
    journey_class
  end
end
