VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# computer_choice = VALID_CHOICES.sample

player_score = 0
computer_score = 0

# def calculate_winner(player1, player2)
#   if  (player1 == 'rock' && player2 == 'scissors') ||
#       (player1 == 'paper' && player2 == 'rock') ||
#       (player1 == 'rock' && player2 == 'lizard') ||
#       (player1 == 'spock' && player2 == 'lizard') ||
#       (player1 == 'scissors' && player2 == 'paper') ||
#       (player1 == 'lizard' && player2 == 'spock') ||
#       (player1 == 'scissors' && player2 == 'lizard') ||
#       (player1 == 'lizard' && player2 == 'paper') ||
#       (player1 == 'paper  ' && player2 == 'spock') ||
#       (player1 == 'spock' && player2 == 'rock')
#     player_win = true
#   elsif player1 == player2
#     winner = 'draw'
#   else
#     player_win = false
#   end
# end

def calculate_winner(player1, player2)
  if  (player1 == 'rock' && player2 == 'scissors') ||
      (player1 == 'paper' && player2 == 'rock') ||
      (player1 == 'rock' && player2 == 'lizard') ||
      (player1 == 'spock' && player2 == 'lizard') ||
      (player1 == 'scissors' && player2 == 'paper') ||
      (player1 == 'lizard' && player2 == 'spock') ||
      (player1 == 'scissors' && player2 == 'lizard') ||
      (player1 == 'lizard' && player2 == 'paper') ||
      (player1 == 'paper  ' && player2 == 'spock') ||
      (player1 == 'spock' && player2 == 'rock')
    true
  end
end

def display_results(first_score, second_score)
  puts "Your score: #{first_score}"
  puts "Computer score: #{second_score}"
end

def add_point(score)
  score + 1
end

prompt("Welcome to the rock,paper,lizard,spock game!")
prompt("Please enter one of the following: #{VALID_CHOICES}")
prompt("You can also use r,p,l,sc, or sp")

loop do # loop so that you loop until you get 5 points
  choice = ''
  computer_choice = VALID_CHOICES.sample

  loop do # will loop for valid choices
    prompt("Choose one: #{VALID_CHOICES}")
    choice = Kernel.gets().chomp()

    VALID_CHOICES.each do |arr|
      choice = arr if arr.start_with?(choice)
    end

    if !VALID_CHOICES.include?(choice)
      prompt("This is an invalid choice. Please enter one of the options:")
    else
      break
    end
  end

  prompt("Computer chose #{computer_choice} and you chose #{choice}.")

  winner = calculate_winner(choice, computer_choice) ? "Player" : "Computer"

  if winner == "Player"
    puts "You scored!"
    player_score += 1
  elsif winner == "Computer"
    puts "Computer Scored!"
    computer_score = add_point(computer_score)
  else
    puts "Didn't add any points"
  end

  display_results(player_score, computer_score)

  if computer_score == 5
    puts "You lost :("
    break
  elsif player_score == 5
    puts "You won! congratulations!"
    break
  end
end
