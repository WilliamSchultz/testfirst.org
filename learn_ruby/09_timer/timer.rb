class Timer

  def seconds #getter
    @seconds = 0
  end

  def seconds=(time_entered) #setter
    @time_entered = time_entered
  end

  def time_string #getter
    hs = @time_entered / 3600 
    ms = (@time_entered - hs * 3600) / 60
    ss = @time_entered - hs * 3600 - ms * 60
    "#{padded(hs)}:#{padded(ms)}:#{padded(ss)}"
  end

  def padded(i) #helper method
    i < 10 ? "0" + i.to_s : i.to_s
  end
end 

