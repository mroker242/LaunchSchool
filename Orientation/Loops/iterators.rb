#iterators.rb

names = ["michael", "mary", "Pamela"]

names.each {|name| puts "yes " + name}


x = 1
names.each do |name|
  puts "#{name}: #{x}"
  x+=1
end

