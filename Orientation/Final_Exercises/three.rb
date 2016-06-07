numbers = [1,2,3,4,5,6,7,8,9,10]
b = []

numbers.select do  |number| 
  if number.odd?
  b.push(number)
end
end



puts b
