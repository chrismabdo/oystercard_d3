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
        if !!@entry_station
            @complete = true
        else
            @complete = false
        end
        self

    end

    def fare
        if complete == true
            MINIMUM_FARE
        else
            PENALTY_FARE
        end
        
    end

end
