# determine if 42 lies between 10 and 100

number = 42

myarray = (10..100).to_a

myarray.each do |n|
  if n == number
    puts "This number is in there"
  end
end
