class Dictionary
  attr_accessor :entries
  
  def initialize
    @entries = {}
  end 
  
  def add(input)
    if input.is_a?(String)
      @entries[input] = nil
    else
      input.map { |key, value| @entries[key] = value }
    end 
  end 
  
  def keywords
    @entries.keys
  end 
  
end 

puts t = Dictionary.new
