# a = ['|','|','|','|']
# b = ['|','|','|','|']
# c = ['|','|','|','|']



game_board_hash = {'a1' => 0, 'a2' => 0, 'a3' => 0,
                   'b1' => 0, 'b2' => 0, 'b3' => 0,
                   'c1' => 0, 'c2' => 0, 'c3' => 0}

displaya = ''
displayb = ''
displayc = ''

hash_values = game_board_hash.values

def board_is_full(hash_values)
  !hash_values.include?(0)
end

def display_board(displaya,displayb,displayc,game_board_hash)

  game_board_hash.each do |k,v|

    if k[0] == 'a' && k[1] != '1'
      displaya << '|'
    elsif k[0] == 'b' && k[1] != '1'
      displayb << '|'
    elsif k[0] == 'c' && k[1] != '1'
      displayc << '|'
    end

    if k[0] == 'a' && v == 1
      displaya << 'x'
    elsif k[0] == 'b' && v == 1
      displayb << 'x'
    elsif k[0] == 'c' && v == 1
      displayc << 'x'
    elsif k[0] == 'a' && v == 2
      displaya << 'o'
    elsif k[0] == 'b' && v == 2
      displayb << 'o'
    elsif k[0] == 'c' && v == 2
      displayc << 'o'
        
    end
  end

  p displaya
  p displayb
  p displayc

  displaya.clear
  displayb.clear
  displayc.clear

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

def determine_number(array_total,input)
  array_total = array_total.length
  if array_total > 4
    difference = array_total - 4
    result = difference + input.to_i
    result
  else
    input
  end  
end







loop do

  game_board_hash = {'a1' => 0, 'a2' => 0, 'a3' => 0,
                     'b1' => 0, 'b2' => 0, 'b3' => 0,
                     'c1' => 0, 'c2' => 0, 'c3' => 0}


  loop do 

    
    display_board(displaya,displayb,displayc,game_board_hash)

    puts "Please enter the column where you want to play: (1,2,3)"
    column = gets.chomp().to_i
    puts "Please enter the row where you want to play: a,b,c"
    row = gets.chomp()

    input_board(row,column,game_board_hash) #user marks a square

    display_board(displaya,displayb,displayc,game_board_hash)


    loop do

      computer_choice = computer_choice(game_board_hash)

      
      hash_values = game_board_hash.values
      if game_board_hash[computer_choice] == 0 || board_is_full(hash_values)
        game_board_hash[computer_choice] = 2

        puts "Computer has chosen #{computer_choice}"

        break
      end
    end



    hash_values = game_board_hash.values
    
    if game_logic(game_board_hash,1)
      puts "You win!"
      break
      elsif game_logic(game_board_hash,2)
        puts "Computer wins!"
        break
      elsif board_is_full(hash_values) # i stil have to do this
        puts "This is a tie."
        break   
    end

  end


  puts "Do you want to play again? (y or n)"
  decision = gets.chomp()
  if decision == 'n'
    break
  end

end 

