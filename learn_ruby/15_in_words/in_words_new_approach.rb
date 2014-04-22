number = 1_888_259_040_036
arr_number = []
number.to_s.reverse.scan(/.{1,3}/).map { |i| arr_number << i.reverse.to_i } #start at the end

case arr_number.length
  when 1
    puts "hundreds" 
  when 2
    puts "thousands"
  when 3
    puts "millions"
  when 4
    puts "billions"
  when 5 
    puts "trillions"
  end 