def prompt(msg)
  puts "=> #{msg}"
end

def add(score)
  score += 1
end

prompt("say yes to break the outer loop")



loop do # loop 1
  prompt("You are now in loop 1")
  player_score = 0
  dealer_score = 0

  loop do # loop 2
    prompt("You are now in loop 2")
    prompt("this is the inner loop")
    add(player_score)
    player_score = add(player_score)
    prompt("Player Score = #{player_score}")
    answer = gets.chomp 
    break if answer == "yes"

    loop do # loop 3
      prompt("this is another loop type no to break")
      response = gets.chomp
      if response == "yes"
        break
      end
      prompt("this is the third loop")
    end
    prompt("this is the second loop")
    prompt("Do you want to break the second loop or go again?")
    response = gets.chomp
  end
  prompt("this is the first loop")

end