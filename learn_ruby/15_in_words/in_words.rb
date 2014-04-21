module InWords
  
 def in_words
   number = self
   
   $one = ['', 'one',  'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
   $teen = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
   $ten = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
   
   case number
   when 0
     "zero"
   when 1..9
     $one[number]
   when 10..19
     $teen[number-10]
   when 20..99
     for_tens(number)
   when 100..999
     for_hundreds(number)
   when 1000..99999
     for_thousands(number)
   when 1_000_000..999_999_999
     for_millions(number)
   when 1_000_000_000..9_999_999_999
     for_billions(number)
   when 1_000_000_000_000..1_999_999_999_999
     for_trillions(number)
   end
   
 end
 
 def for_tens(input)
   ($ten[input.to_s.slice(-2).to_i-1] + " " + $one[input.to_s.slice(1).to_i]).strip
 end
 
 def for_hundreds(input)
   if input == 000 #all numbers 0
     ''
   elsif input.to_s.slice(1,2) == '00' #last two numbers 0?
     $one[input.to_s.slice(-3).to_i] + " " + "hundred"
   elsif input.to_s.length == 1 #001 turns into 1
     $one[input]
   elsif input.to_s.length == 2 #001 turns into 1
     for_tens(input)
   elsif input.to_s.slice(1).to_i == 1 #for teens
     $one[input.to_s.slice(-3).to_i] + " " + "hundred " + $teen[input.to_s.slice(2).to_i]
   else 
     $one[input.to_s.slice(-3).to_i] + " " + "hundred " + for_tens(input.to_s.slice(1,2).to_i) # > 20
  end 
 end
 
 def for_thousands(input)
   if input.to_s.length.to_i == 4 # > 10k
     $one[input.to_s.slice(0).to_i] + " thousand"
   else # < 10k
     for_tens(input.to_s.slice(0,2).to_i) + " thousand " + for_hundreds(input.to_s.slice(2,3).to_i)
   end 
 end
 
 def for_millions(input)
   if input.to_s.slice(0,2).to_i < 20 # < 20m
     $teen[input.to_s.slice(0).to_i-1] + " million" + " one"
   else # > 20 m
     
   end 
 end
 
 def for_billions(input)
   if input.to_s.slice(0,1).to_i < 10
     $one[input.to_s.slice(0,1).to_i] + " billion " + for_hundreds(input.to_s.slice(1,3).to_i) + " million " +
     for_hundreds(input.to_s.slice(4,3).to_i) + " thousand " + for_hundreds(input.to_s.slice(7,3).to_i)
   end
 end   
 
 def for_trillions(input)
   if input.to_s.length.to_i == 13 # <= 9t
     ($one[input.to_s.slice(0,1).to_i] + " trillion " +
     if input.to_s.slice(1,3).to_i == 0 then '' else for_hundreds(input.to_s.slice(1,3).to_i) + " billion " end +
     if input.to_s.slice(4,3).to_i == 0 then '' else for_hundreds(input.to_s.slice(4,3).to_i) + " million " end +
     if input.to_s.slice(7,3).to_i == 0 then '' else for_hundreds(input.to_s.slice(7,3).to_i) + " thousand " end +
     if input.to_s.slice(10,3).to_i == 0 then '' else for_hundreds(input.to_s.slice(10,3).to_i) end).strip
   else # >= 10t
     "k"
   end 
   
 end 
 
end
  
class Fixnum
  include InWords
end 

puts 1_888_259_040_036.in_words


   