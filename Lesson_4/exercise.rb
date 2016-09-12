require 'pry'
def prompt(msg)
  puts "=> #{msg}"
end

new_var = 4
old_var = 5

loop do
  new_var += 1
  puts "#{new_var}"
  break if new_var == 10
end

puts new_var


def local(var)
  b = 'money'
  puts "inside method the new var is #{var}"
  puts "the method is #{b}"
end

p local(new_var)

p b






    






















    





      



























    
    







