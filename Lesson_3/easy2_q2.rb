ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
       "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

result = 0
ages.each_value do |value| 

result = value + result

end

puts result