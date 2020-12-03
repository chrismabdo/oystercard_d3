#require 'station'

class Journey

    PENALTY_FARE = 6
    MINIMUM_FARE = 1
    attr_reader :entry_station, :exit_station, :complete

    def initialize(entry_station = nil)
      @entry_station = entry_station
      @complete = false
    end

    def finish(exit_station)
      @exit_station = exit_station
      !!@entry_station ? @complete = true : @complete = false
      self
    end

    def fare
      complete == true ? MINIMUM_FARE : PENALTY_FARE
    end

    def complete?
      @complete
    end

end
