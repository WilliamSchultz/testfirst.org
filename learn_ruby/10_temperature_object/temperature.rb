class Temperature

  def initialize(input) #initialize method passes in any parameters that will be passed to new
    @fahrenheit = input[:f] || input[:c] * (9.0/5.0) + 32 #determines if input is :c or :f
  end

  def in_fahrenheit
    @fahrenheit 
  end

  def in_celsius
    (@fahrenheit - 32) * (5.0/9.0)
  end
  
  def self.from_celsius(input) #class method, for factory method design pattern
    self.new(:c => input)
  end

  def self.from_fahrenheit(input) #class method, for factory method design pattern
    self.new(:f => input)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end 
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end 
end 







