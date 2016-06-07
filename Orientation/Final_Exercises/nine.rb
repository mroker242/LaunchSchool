#hashes.rb


h = {a:1, b:2, c:3}

puts h[:b] # get b

 h[:e] = 5

 h.delete_if {|key, value| value < 3.5}

 puts h