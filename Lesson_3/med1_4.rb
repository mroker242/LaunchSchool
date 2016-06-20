numbers = [1, 2, 3, 4]
numbers.each do |number|  #iterate through numbers
  p number               # print numbers array
  numbers.shift(1)        #removes the 1 from the array
end


numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end


