# scopes.rb

player = false
computer = false
computer_score = 0
player_score = 0
winner = ''

def calculate_winner(choice1, choice2)
  if choice1 == 'winner'
    choice1 = true

  elsif pamela == "winner"
    choice2 = true

  else
    puts "invalid"
  end
end

def winner(player1,player2)
  if(player1 == 'rock' && player2 == 'scissors')
    true
  end
end

michael = 'rock'
pamela = 'l'
m = winner(michael, pamela)

puts "the winnder is #{m}"
puts m == true


def display_results(winner)
  if winner
    puts "You win"
  else
    puts "You Lose!"
  end
end


def add_point(name)
  name += 1
end

michael = 'winner'
pamela = 'something'

winner = calculate_winner(michael, pamela)

display_results(winner)

player_score = add_point(player_score)

puts player_score
