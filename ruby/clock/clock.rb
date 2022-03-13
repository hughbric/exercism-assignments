class Clock
  attr_reader :hour, :minute

  HOURS_PER_DAY = 24
  MINUTES_PER_HOUR = 60
  TIME_FORMAT = "%02d:%02d".freeze

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    compute_and_assign_hours_and_minutes
    TIME_FORMAT % [@computed_hours, @computed_minutes]
  end

  def +(other_clock_instance)
    Clock.new(hour: @hour + other_clock_instance.hour, minute: @minute + other_clock_instance.minute)
  end

  def -(other_clock_instance)
    Clock.new(hour: @hour - other_clock_instance.hour, minute: @minute - other_clock_instance.minute)
  end

  def ==(other_clock_instance)
    self.to_s == other_clock_instance.to_s
  end

  private

  def compute_and_assign_hours_and_minutes
    total_minutes = (@hour * MINUTES_PER_HOUR) + @minute
    @computed_hours = (total_minutes / MINUTES_PER_HOUR) % HOURS_PER_DAY
    @computed_minutes = total_minutes % MINUTES_PER_HOUR
  end
end
