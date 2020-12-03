require_relative 'journey'


class Oystercard
  MAXIMUM_LIMIT = 90
  MINIMUM_AMOUNT = 1
  attr_reader :balance
  attr_reader :entry_station, :exit_station
  attr_reader :history

  def initialize
    @balance = 0
    @history = []
  end

  def top_up(amount)
    fail "balance exceeds £#{MAXIMUM_LIMIT}" if @balance + amount > MAXIMUM_LIMIT
    @balance += amount
  end


  def touch_in(entry_station)
    @new_journey = Journey.new(entry_station)
    fail "balance under £#{MINIMUM_AMOUNT}" if @balance < MINIMUM_AMOUNT
    @entry_station = entry_station
    @new_journey
  end

  def touch_out(exit_station)
    @new_journey.finish(exit_station)
    deduct
    @exit_station = exit_station
    add_to_history
    @entry_station = nil
    @exit_station = nil
  end

  private

  def deduct
    @balance -= @new_journey.fare
  end

  def add_to_history
    @history << {:entry_station => @new_journey.entry_station, :exit_station => @new_journey.exit_station}
  end

end
