class Journey
MIN_FARE = 1
PENALTY_FARE = 6

attr_reader :entry_station, :exit_station

  def start(entry_station)
    @entry_station = entry_station
  end

  def finish(exit_station)
    @exit_station = exit_station
  end

  def in_progress?
    !!@entry_station
  end

  def complete?
    !!@entry_station && !!@exit_station
  end
  def fare
    complete? ? calculate_fare : PENALTY_FARE
  end

private

def calculate_fare
  MIN_FARE * fare_multipler
end

def fare_multipler
  MIN_FARE + (@entry_station.zone - @exit_station.zone).abs
end

end
