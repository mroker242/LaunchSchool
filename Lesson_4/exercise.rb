require 'pry'
def prompt(msg)
  puts "=> #{msg}"
end


def a_method(str)
  str += 'world' # => str = str + 'world' ... this is reassignment.. another string object
  str + 'world' # => also + is a method and this creates another string object
  str << 'world' # this one mutates the object, is destructive
end

a_method('hello')









    






















    





      



























    
    







