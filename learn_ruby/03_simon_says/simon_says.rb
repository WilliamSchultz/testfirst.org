def echo(word)
  word
end 

def shout(word)
  word.upcase
end 

def repeat(word1, num=2)
  ("#{word1} " * num).strip
end

def start_of_word(word, index)
  real_index = index - 1
  word[0..real_index]
end 

def first_word(sentence)
  sentence.split[0]
end 

def titleize(sentence)
  little_words = %w(the and an a or but for of over) #creates an array of little words 
  sentence.split.map.with_index { |i, index| little_words.include?(i) && index > 0 ? i : i.capitalize }.join(" ") 
end 

print titleize("jaws")


