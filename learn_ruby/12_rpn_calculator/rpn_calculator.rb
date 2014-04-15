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
    p @stack[-1]
  end
end 


