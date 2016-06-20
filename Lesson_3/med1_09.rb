munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|

  case 
  when (1..17).include?(key["age"])
    munsters[key]["age_group"] = "kid"
  when (18..64).include?(key["age"])
     munsters[key]["age_group"] = "adult"
  else
   munsters[key]["age_group"] = "senior"
end

end

# puts munsters

puts munsters






