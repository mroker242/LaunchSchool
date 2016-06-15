# rpsls

VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end



def display_results(player1, player2)
    if (player1 == 'rock' && player2 == 'scissors') ||
        (player1 == 'paper' && player2 == 'rock') ||
        (player1 == 'rock' && player2 == 'lizard') ||
        (player1 == 'spock' && player2 == 'lizard') || 
        (player1 == 'scissors' && player2 == 'paper') ||
        (player1 == 'lizard' && player2 == 'spock') ||
        (player1 == 'scissors' && player2 == 'lizard') ||
        (player1 == 'lizard' && player2 == 'paper') ||
        (player1 == 'paper  ' && player2 == 'spock') ||
        (player1 == 'spock' && player2 == 'rock') 
        prompt("You win. You chose #{player1} and computer chose #{player2}")
      elsif
        player1 == player2
        prompt("Tie! Try again!")
      else
        prompt("Computer wins. Computer chose #{player2} and you chose #{player1}")
    end
end


def add_point(player1,player2)
  player_score = 0
  computer_score = 0
  if (player1 == 'rock' && player2 == 'scissors') ||
        (player1 == 'paper' && player2 == 'rock') ||
        (player1 == 'rock' && player2 == 'lizard') ||
        (player1 == 'spock' && player2 == 'lizard') || 
        (player1 == 'scissors' && player2 == 'paper') ||
        (player1 == 'lizard' && player2 == 'spock') ||
        (player1 == 'scissors' && player2 == 'lizard') ||
        (player1 == 'lizard' && player2 == 'paper') ||
        (player1 == 'paper  ' && player2 == 'spock') ||
        (player1 == 'spock' && player2 == 'rock')
        player_score +=1 
        puts "pl is #{player_score}"
      elsif player1 == player2
        player1.to_i += 0
        player2.to_i += 0
      else
        computer_score += 1
        puts player2
      end
end






computer_choice = VALID_CHOICES.sample

loop do # if you want to play again, this loop will run again
  player_score = 0
  computer_score = 0
  

   

    loop do

      def test()
        puts player_score
        puts computer_score
      end
      test()

       choice = ''
      prompt("Choose one: #{VALID_CHOICES}")
      choice = Kernel.gets().chomp()

      #test
      VALID_CHOICES.each do |arr|
        if arr.start_with?(choice)
          puts arr
          choice = arr
        end
      end

      puts "choice = #{choice}"

      if VALID_CHOICES.include?(choice)
        puts "it includes"
        
      else
        prompt("This is an invalid choice")
      end

      puts "choice: #{choice} and computer_choice: #{computer_choice}"

      display_results(choice, computer_choice)

      add_point(choice, computer_choice)

      puts "computer score is #{computer_score}"
      puts "player_score is #{player_score}"

    end

  

  



    puts "Do you Want to play again? (y or n)"
    answer = Kernel.gets().chomp()
    break unless answer == 'y'
end

puts "Thank you for playing the game."
