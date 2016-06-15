# Question 2

# 1. != means not equal to...e.g 4 != 5

#2.
advice = "Few things in life are as important as house training your pet dinosaur."

advice = advice.split(' ')

advice.map do |n|
  if n == "important"
    n.replace("urgent")
  end
end

advice = advice.join(" ")

puts advice
