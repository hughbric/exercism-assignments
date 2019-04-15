class Clock
  def initialize(hour: 0, minute: 0)
    @daily_minutes = (hour * 60 + minute) % 1440
  end

  def to_s
    format('%02d:%02d', hours, minutes)
  end

  private

  attr_reader :daily_minutes

  def hours
    daily_minutes / 60
  end

  def minutes
    daily_minutes % 60
  end
end
