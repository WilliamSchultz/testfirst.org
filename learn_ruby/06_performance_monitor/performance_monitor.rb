require 'time'

def measure(num=0, &block)
  start = Time.now
  num == 0 ? block.call : num.times { block.call }
  (Time.now - start) / (num == 0 ? 1 : num)
end