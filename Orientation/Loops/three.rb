#three.rb

food = ["bread",'flour','water','sugar']
x = 1

def each_with_index(food)
  x = 1
  food.each do |fooditem|
    puts "#{x}. #{fooditem}"
    x += 1
  end
end


each_with_index(food)
