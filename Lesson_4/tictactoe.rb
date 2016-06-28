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
      puts k
    end
  end      
end


def input_board(row,column,hash) # testing
  # change the game board hash values
  index = column - 1
  location = row << column.to_s
  hash[location] = 1 # the location here should be a1,a2, etc
  column = location[1].to_i

  p "row is #{row}"



  row.insert(index,'x')
end

#a.insert(2,"x") # this is how you insert a player's x or o in a gameboard

#determine row
if row == 'a'
  row = a
end

puts "Please enter the column where you want to play: (1,2,3)"
column = gets.chomp().to_i
puts "Please enter the row where you want to play: a,b,c"
row = gets.chomp()

puts "row is definitely equal to #{row}"


input_board(row,column,game_board_hash) # testing

show_available_squares(game_board_hash)

p game_board_hash

display_board(a,b,c)










