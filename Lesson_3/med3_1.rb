
mystring = "michael "
m = ["something"]

def tmethod(stringy,new__array)
  stringy += "yes"
  new__array << "string"
  puts "Inside method: #{stringy.object_id}"
  puts "Inside method: #{new__array.object_id}"
end



puts "global: #{mystring.object_id}"
puts "global array: #{m.object_id}"

tmethod(mystring,m)

puts "global string after: #{mystring.object_id}"
puts "global array after: #{m.object_id}"


