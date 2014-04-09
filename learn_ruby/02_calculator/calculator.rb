def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  if array.length > 0 
    array.inject(:+)
  else
    0
  end
end 
  
def multiply(*num)
  total = 1
  num.each { |n| total = total * n }
  total
 end
 
 def power(num1, num2)
   num1 ** num2
 end 
 
 def factorial(num)
   if num == 0
     1
   else
   (1..num).inject(:*)
   end 
 end 
 
