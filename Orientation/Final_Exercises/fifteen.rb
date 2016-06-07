arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |name| name.start_with?('s') || name.start_with?('w')}

puts arr