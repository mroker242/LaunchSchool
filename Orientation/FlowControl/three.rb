#three.rb

puts "Whats your number for the if statement?"



a = gets.chomp.to_i
def evaluate_if(a)
if a < 0
  puts "#{a} is less than 0!"
elsif a <= 50
  puts "#{a} is between 0 and 50"
elsif a <= 100
  puts "#{a} is less than 100 but more than 50"
else 
  puts "Your number is greater than 100"
end
end

evaluate_if(a)


puts "Whats your number for the case statement?"

b = gets.chomp.to_i

def evaluate_case(b)

case 
when b < 0
  puts "#{b} is less than 0"
when b < 50
  puts "#{b} is less than 50"
when b < 100
  puts "#{b} is greater than 50"
else
  puts "#{b} is greater than 100"
  end
end

evaluate_case(b)


