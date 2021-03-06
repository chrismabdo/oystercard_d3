require_relative "journey"

class JourneyLog
attr_reader :entry_station
attr_reader :exit_station
attr_reader :journey_history
  def initialize(journey_class: )
    @journey_class = journey_class
    @journey_history = []
  end

  def start(entry_station, journey_class = Journey)
    @entry_station = entry_station
    @current_journey = @journey_class.new(entry_station)
  end

  def finish(exit_station)
    @exit_station = exit_station
    @current_journey.exit_station(exit_station)
  end

  # def current_journey
  #   @current_journey ||= journey_class.new
  # end

  def journeys
    @journey_history << @current_journey
    #{:entry_station => @current_journey.entry_station, :exit_station => @exit_station}
  end
  
end
