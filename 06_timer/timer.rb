class Timer
  attr_accessor :seconds

  def initialize 
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  
  def time_string
  	sec = padded(@seconds)
  	@time = sec
  end

  def padded seconds
    @seconds = seconds % 60
    #mod 60 to keep minutes within 0-59
    @minutes = seconds / 60 % 60
    @hours = seconds / 3600
    time_sec = @seconds.to_s
    time_min = "00:"
    time_hour = "00:"
  	if @seconds <= 9
      time_sec = "0"+ @seconds.to_s
    end
    if @minutes <= 59 && @minutes >=1
      if @minutes <=9
        time_min = "0" + @minutes.to_s + ":"
      else
        time_min = @minutes.to_s
      end
    end
    if @hours > 0
      if @hours >= 0
        time_hour = "0" + @hours.to_s + ":" 
      else
        time_hour = @hours.to_s
      end
    end
    time = time_hour + time_min + time_sec
  end

end
