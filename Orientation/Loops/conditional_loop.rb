#contidional_loop.rb

i = 0
loop do
  i += 1
  if i == 5
    next
  end
  if i == 9
    next  
  end
  puts i
  if i == 20
    break
  end
end