#loop

def print_keys(hash)
  hash.each_key { |k| puts k }
end

def print_values(hash)
  hash.each_value { |k| puts k }
end

def print_keys_values(hash)
  hash.each { |k,v| puts "#{k} and #{v}" }
end



h = {'name' => 'michael', 'age'=> 33, 'lastname'=> 'roker'}
print_keys(h)
print_keys_values(h)

print_values(h);