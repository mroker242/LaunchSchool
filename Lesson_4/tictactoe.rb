a = ['|','|','|','|']
b = ['|','|','|','|']
c = ['|','|','|','|']



game_board_hash = {'a1' => 0, 'a2' => 0, 'a3' => 0,
                   'b1' => 0, 'b2' => 0, 'b3' => 0,
                   'c1' => 0, 'c2' => 0, 'c3' => 0}

def display_board(a,b,c)
 p a.join(" ")
 p b.join(" ")
 p c.join(" ")
end

      
def show_available_squares(hash)
  hash.each do |k,v| 
    if v == 0 
      p "Available squares are: #{k}" 
    end
  end      
end

def available_squares?(hash,row,column)
  input = row + column.to_s
  
  if hash[input] == 0
    true
  else
    false
  end       
end


def input_board(row,column,hash)

  index = column - 1

  loop do 
    if available_squares?(hash,row,column)
      location = row << column.to_s
      hash[location] = 1 
      column = location[1].to_i
      break    
    end

    puts "This spot is already taken. Please enter another row: (a,b,c)"
    row = gets.chomp()
    puts "And another column: (1,2,3)"
    column = gets.chomp()
  end        
end

def computer_choice(game_board_hash)
  computer_choice = rand(game_board_hash.length) - 1
  output = game_board_hash.keys[computer_choice]
end

def game_logic(hash,player_number)
  if hash['a1'] == player_number && hash['a2'] == player_number && hash['a3'] == player_number  ||
     hash['b1'] == player_number && hash['b2'] == player_number && hash['b3'] == player_number  ||
     hash['c1'] == player_number && hash['c2'] == player_number && hash['c3'] == player_number  ||
     hash['a1'] == player_number && hash['b1'] == player_number && hash['c1'] == player_number  ||
     hash['a2'] == player_number && hash['b2'] == player_number && hash['c2'] == player_number  ||
     hash['a3'] == player_number && hash['b3'] == player_number && hash['c3'] == player_number  ||
     hash['a1'] == player_number && hash['b2'] == player_number && hash['c3'] == player_number  ||
     hash['a3'] == player_number && hash['b2'] == player_number && hash['c1'] == player_number       
     
  player_number
else
  false
     
  end
end



loop do

  loop do #this is if someone wins

  puts "Please enter the column where you want to play: (1,2,3)"
  column = gets.chomp().to_i
  puts "Please enter the row where you want to play: a,b,c"
  row = gets.chomp()

  input_board(row,column,game_board_hash) #user marks a square

  # computer adds to hash and if choice has not been chosen already by user, input something there
  loop do
    computer_choice = computer_choice(game_board_hash)

    if game_board_hash[computer_choice] == 0 
      game_board_hash[computer_choice] = 2

      puts "Computer has chosen #{computer_choice}"
      break
    end
  end

  p game_board_hash

  puts "Anyone win? #{game_logic(game_board_hash,1)}"

  p "winner = #{game_logic(game_board_hash,1)}"
  p "winner = #{game_logic(game_board_hash,2)}"

  if game_logic(game_board_hash,1)
    puts "You win!"
    break
    elsif game_logic(game_board_hash,2)
      puts "Computer wins!"
      break
  end
end
  


  puts "Do you want to play again? (y or n)"
  decision = gets.chomp()
  if decision == 'n'
    break
  end
end 










