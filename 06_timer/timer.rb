class Timer
  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds #getter
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    hours = @seconds / 3600
    hours_rem = @seconds % 3600
    minutes = hours_rem / 60
    seconds = hours_rem % 60
    timer_time=[hours, minutes, seconds]
    new_tt=[]
    for units in timer_time
      if units < 10
        po="0"+units.to_s
        new_tt << po
      else 
        po = units.to_s
        new_tt << po
      end
    end
    new_tt.join(':')
  end

end

#j = Timer.new
#j.seconds=4000
#j.time_string