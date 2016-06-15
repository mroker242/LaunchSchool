VALID_CHOICES = %w(rock paper scissors)

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You win")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")

  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That isn't a valid choice.")
    end
  end

  computer_choice = %w('rock', 'paper', 'scissors').sample

  display_results(choice, computer_choice)

  prompt("Do you want to play again? (y or n)")
  answer = Kernel.gets().chomp()
  break unless answer == 'y'
end

prompt("Thank you for playing! Good Bye!")
Kernel.puts("You chose #{choice}; Computer chose #{computer_choice}")
