#sixteen.rb

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']


a.map! do |name|
  name.split(' ')
end
a.flatten!

p a