#loop_example.rb

i = 0
loop do 
  i += 1
  puts i
  break 
  puts "
  this is after the break but inside the loop"
end

puts "this is outside the loop"