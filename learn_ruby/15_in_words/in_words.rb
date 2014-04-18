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
   end
 end
 
 def for_tens(input)
   ($ten[input.to_s.slice(-2).to_i-1] + " " + $one[input.to_s.slice(1).to_i]).strip
 end
 
 def for_hundreds(input)
   if input.to_s.slice(1,2).to_i == 00 #last two numbers 0?
     $one[input.to_s.slice(-3).to_i] + " " + "hundred"
   elsif input.to_s.slice(1).to_i == 1 #for teens
     $one[input.to_s.slice(-3).to_i] + " " + "hundred " + $teen[input.to_s.slice(2).to_i]
   else 
     $one[input.to_s.slice(-3).to_i] + " " + "hundred " + for_tens(input.to_s.slice(1,2).to_i) # < 20
  end 
 end
 
 def for_thousands(input)
   if input.to_s.length.to_i == 4
     $one[input.to_s.slice(0).to_i] + " thousand"
   else 
     for_tens(input.to_s.slice(0,2).to_i) + " thousand " + for_hundreds(input.to_s.slice(2,3).to_i)
   end 
 end 
 
end
  
class Fixnum
  include InWords
end 




   