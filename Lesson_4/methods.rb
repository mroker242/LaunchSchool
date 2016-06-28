a = [1,2,3,4,5]
b = [7,8,9]

puts "Choose a or b:"
answer = gets.chomp
puts "Pick number to insert into array:"
number = gets.chomp()

# make method to insert number into array
# answer is a string

def insert(answer, number)
  a.insert(1,number)
end

insert(answer,number)

p a


