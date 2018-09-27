class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds
    return @seconds
  end

  def time_string
    hours = sprintf('%02d', @seconds/3600)
    minutes = sprintf('%02d', (@seconds/60)%60)
    seconds = sprintf('%02d', @seconds % 60)
    return "#{hours}:#{minutes}:#{seconds}"
  end

end
