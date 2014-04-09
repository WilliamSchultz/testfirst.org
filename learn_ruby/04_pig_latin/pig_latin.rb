def translate(sentence)
  each_word = sentence.split.map{ |i| translator(i) }.join(" ") 
end 

def translator(word)
  punctuation = word.match(/[[:punct:]]/).to_s #to_s because .delete accpets strings as arguments
  word.delete!(punctuation)
  word.downcase.include?("qu") ? loc = word.index(/[aeioAEIO]/) : loc = word.index(/[aeiouAEIOU]/) 
    
    if loc == 0 
      word + 'ay' 
      
    elsif 
      beginning = word[0..loc-1]
      ending = word[loc..-1]
      word == word.capitalize ? (ending + beginning.downcase + 'ay' + punctuation).capitalize : ending + beginning + 'ay' + punctuation
    end 
end


