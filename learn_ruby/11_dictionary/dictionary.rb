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
    @entries.keys.sort
  end 
  
  def include?(input)
    @entries.keys.include?(input) ? true : false
  end 
  
 def find(input={})
   matches = {}
   if @entries.empty? == true then {} end
   @entries.each { |key, value| if key[0...input.length] == input then matches[key] = value end }
   matches
 end 
 
 def printable
   @entries.sort.map { |key, value| "[#{key}] \"#{value}\"" }.join("\n")
 end 
end 



