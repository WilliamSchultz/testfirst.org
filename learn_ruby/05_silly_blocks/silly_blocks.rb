def reverser(&block)
  block.call.split.map { |word| word.reverse }.join(" ") 
  #yield.split.map... also works; yield automatically detects any passed code block and passes control to it
end

def adder(num=1, &block)
  block.call + num
end 

def repeater(num=0, &block)
   num == 0 ? block.call : num.times { block.call }
end 