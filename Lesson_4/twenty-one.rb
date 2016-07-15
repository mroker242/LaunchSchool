require 'pry'

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
  if player_hand > 21
    true
  else
    false
  end
end

def winner(player_score, dealer_score)
  # winner_score = ''
  if player_score > 21
    "PLAYER_BUSTED"
  elsif dealer_score > 21
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

loop do
  system 'clear'
  prompt("Welcome to 21!")

  # initialize vars
  deck = initialize_deck

  player_cards = []
  dealer_cards = []

  # initial deal
  deal_hand(deck, player_cards)
  deal_hand(deck, dealer_cards)

  prompt("Player has #{player_cards[0]} and #{player_cards[1]} for a total of #{sum_of_values(player_cards)}")
  prompt("Deaer has #{dealer_cards[0]} and ?")

  player_count = sum_of_values(player_cards)
  dealer_count = sum_of_values(dealer_cards)

  # player turn
  loop do
    answer = nil
    loop do
      prompt("Do you want to hit or stay?(type hit or stay)")
      answer = gets.chomp
      break if answer == 'hit' || 'stay'
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
    display_winner(winner)
    play_again? ? next : break
    break
  else
    prompt("You chose to stay!")
  end

  # dealer turn
  prompt("Dealer turn...")

  loop do
    break if busted?(dealer_count) || sum_of_values(dealer_cards) >= 17
    prompt("Dealer hits!")
    hit(deck, dealer_cards)
    dealer_count = sum_of_values(dealer_cards)
    prompt("Dealer now has #{dealer_cards.last}")
  end

  if busted?(dealer_count)
    prompt("Dealers total is now #{sum_of_values(dealer_cards)}")
    winner = winner(player_count, dealer_count)
    display_winner(winner)
    play_again? ? next : break
  else
    prompt("Dealer stays at #{sum_of_values(dealer_cards)}")
  end

  puts "Dealers hand is #{dealer_count} and your hand is #{player_count}"
  winner = winner(player_count, dealer_count)

  display_winner(winner)

  break unless play_again?
end
