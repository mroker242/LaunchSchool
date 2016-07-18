require 'pry'

GAME_NAME = '21'.to_i
GAME_LIMIT = '17'.to_i

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []
  suits = ['h', 'd', 's', 'c']
  (2..10).each do |num|
    deck << ['h', num.to_s]
    deck << ['d', num.to_s]
    deck << ['s', num.to_s]
    deck << ['c', num.to_s]
  end
  suits.each do |suit|
    deck << [suit, 'J']
    deck << [suit, 'Q']
    deck << [suit, 'K']
    deck << [suit, 'A']
  end
  deck
end

def deal_hand(deck, hand)
  random_number = rand(deck.length)
  hand.push(deck.slice!(random_number))
  hand.push(deck.slice!(random_number))
  # hand
end

def hit(deck, hand)
  random_number = rand(deck.length)
  hand.push(deck.slice!(random_number))
  hand
end

def display_player_hand(player_hand)
  player_hand.each { |card| p card }
end

def display_dealer_hand(dealer_hand)
  puts "The dealer's hand is #{dealer_hand[1]} and ?"
end

def sum_of_values(person_hand)
  count = 0
  person_hand.each do |card|
    if card[1] == 'J' ||
       card[1] == 'Q' ||
       card[1] == 'K'
      count += 10
    end
    count += card[1].to_i
    if count < 11 && card[1] == 'A'
      count += 11
    elsif count > 10 && card[1] == 'A'
      count += 1
    end
  end
  count
end

def busted?(player_hand)
  player_hand > GAME_NAME
end

def winner(player_score, dealer_score)
  if player_score > GAME_NAME
    "PLAYER_BUSTED"
  elsif dealer_score > GAME_NAME
    "DEALER_BUSTED"
  elsif player_score > dealer_score
    'PLAYER_WINNER'
  elsif dealer_score > player_score
    'DEALER_WINNER'
  elsif player_score == dealer_score
    'DRAW'
  end
end 

def display_winner(winner)
  if winner == 'PLAYER_WINNER'
    puts "You won the game!"
  elsif winner == "PLAYER_BUSTED"
    puts "Player Busted!"
  elsif winner == "DEALER_BUSTED"
    puts "Dealer Busted"
  elsif winner == 'DEALER_WINNER'
    puts "The dealer won the game!"
  else
    puts "It's a draw!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def grand_ending(dealer_cards, player_cards, dealer_winner, player_winner)
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{sum_of_values(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{sum_of_values(player_cards)}"
  prompt("Dealer has won #{dealer_winner} games and player has won #{player_winner}")
  puts "=============="
end

def final_winner(winner)
  if winner == 5
    puts "You won the overall game!"
  end
end

def player_add_score(score)
  score += 1
end

def add_winner(winner, player_score, dealer_score)
  if winner == "PLAYER_WINNER"
    "add_player"
  elsif winner == "DEALER_WINNER"
    "add_dealer"
  elsif winner == "DEALER_BUSTED"
    "add_player"
  elsif winner == "PLAYER_BUSTED"
    "add_dealer"
  end
end

def main_winner?(score)
  if score == 5
    prompt("Winner! #{score} is 5!!!")
  end
  true
end

loop do # loop 1 
  system 'clear'
  prompt("Welcome to #{GAME_NAME}!")

  # initialize vars
  deck = initialize_deck

  player_cards = []
  dealer_cards = []

  player_winner = 0
  dealer_winner = 0

  # initial deal
  deal_hand(deck, player_cards)
  deal_hand(deck, dealer_cards)

  prompt("Player has #{player_cards[0]} and #{player_cards[1]} for a total of #{sum_of_values(player_cards)}")
  prompt("Deaer has #{dealer_cards[0]} and ?")

  player_count = sum_of_values(player_cards)
  dealer_count = sum_of_values(dealer_cards)

    loop do # this is the main game loop , you break to this if you reach 5 games

    player_cards = []
    dealer_cards = []

    deal_hand(deck, player_cards)
    deal_hand(deck, dealer_cards)

    # player turn
    loop do # loop 2 inside loop 1
      answer = nil
      loop do
        prompt("Do you want to hit or stay?(type hit or stay)")
        answer = gets.chomp
        break if answer == 'hit' || answer == 'stay'
        prompt("Sorry, you must enter hit or stay")
      end

      if answer == 'hit'
        prompt("You chose to hit!")
        hit(deck, player_cards)
        prompt("Your hand is now #{display_player_hand(player_cards)}")
        player_count = sum_of_values(player_cards)
        prompt("Your total is now #{player_count}")
      end

      break if answer == 'stay' || busted?(player_count)
    end

    if busted?(player_count)
      winner = winner(player_count, dealer_count)
      add_winner(winner, player_winner, dealer_winner) == "add_player" ? player_winner = player_winner + 1 : player_winner += 0
      add_winner(winner, player_winner, dealer_winner) == "add_dealer" ? dealer_winner = dealer_winner + 1 : dealer_winner += 0
      main_winner?(player_winner) ? prompt("You won the overall game!") : false
      display_winner(winner)
      grand_ending(dealer_cards, player_cards, dealer_winner, player_winner)
      final_winner(player_winner)
      
      break if main_winner?(dealer_winner) || main_winner?(player_winner) 
      play_again? ? next : break
      break
    else
      prompt("You chose to stay!")
    end

    # dealer turn
    prompt("Dealer turn...")

    loop do
      break if busted?(dealer_count) || sum_of_values(dealer_cards) >= GAME_LIMIT
      prompt("Dealer hits!")
      hit(deck, dealer_cards)
      dealer_count = sum_of_values(dealer_cards)
      prompt("Dealer now has #{dealer_cards.last}")
    end

    dealer_total = sum_of_values(dealer_cards)
    if busted?(dealer_count)
      prompt("Dealers total is now #{dealer_total}")
      winner = winner(player_count, dealer_count)
      add_winner(winner, player_winner, dealer_winner) == "add_player" ? player_winner += 1 : player_winner += 0
      add_winner(winner, player_winner, dealer_winner) == "add_dealer" ? dealer_winner += 1 : dealer_winner += 0
      main_winner?(dealer_winner) ? prompt("You won the overall game!") : false
      display_winner(winner)
      grand_ending(dealer_cards, player_cards, dealer_winner, player_winner)
      final_winner(DEALER_WINNER)
      break if main_winner?(dealer_winner) || main_winner?(player_winner) 
      play_again? ? next : break
    else
      prompt("Dealer stays at #{dealer_total}")
    end

    final_winner(winner)

    puts "Dealers hand is #{dealer_count} and your hand is #{player_count}"
    winner = winner(player_count, dealer_count)

    grand_ending(dealer_cards, player_cards, dealer_winner, player_winner)

    display_winner(winner)
    break if main_winner?(dealer_winner) || main_winner?(player_winner) 
    break unless play_again? 
  end

  break if main_winner?(dealer_winner) || main_winner?(player_winner)
end
