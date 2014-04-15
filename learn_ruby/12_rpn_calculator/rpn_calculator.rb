class RPNCalculator
  
  attr_accessor :stack 
  
  def initialize
    @stack = []
    @@message = "calculator is empty"
  end 
  
  def push(input)
    @stack << input.to_f
  end
  
  def plus
    helper(:+)
  end 
  
  def minus
    helper(:-)
  end 
  
  def divide
    helper(:/)
  end 
  
  def times
    helper(:*) 
  end 
  
  def helper(input)
    if stack.length >= 2
      a = @stack.pop(2)
      b = a.inject(input)
      @stack.push(b)
    else 
      raise @@message
    end 
  end 
    
  def value
    @stack[-1] #returns the newest member to the arrary
  end
  
  def tokens(string)
    list = []
    string.split.each do |i| 
      if i.match(/[0-9]/) #searches for just numbers
        list << i.to_i
      else
        list << i.to_sym
      end 
    end
      list
  end
  
  def evaluate(string)
   tokens(string).each do |i|
     case i
     when :+
       plus
     when :-
       minus
     when :*
       times
     when :/
       divide
     else 
       @stack.push(i.to_f)
     end 
   end
   @stack[-1] #returns the newest member to the arrary
 end 

end 


