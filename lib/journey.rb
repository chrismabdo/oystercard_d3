require 'station'

class Journey

    PENALTY_FARE = 6
    attr_reader :entry_station

    def initialize(entry_station)
        @entry_station = entry_station

        
    end

    def finish(exit_station)
        @exit_station = exit_station
        self
    end

    def fare
        6
    end

    def complete?(boolean)
        boolean
    end

end
