game_board_hash = {'a1' => 1, 'a2' => 0, 'a3' => 1,
                   'b1' => 0, 'b2' => 0, 'b3' => 0,
                   'c1' => 0, 'c2' => 0, 'c3' => 0}


# def game_logic(hash)
#   if hash['a1'] && hash['a2'] && hash['a3'] == 1 ||
#      hash['b1'] && hash['b2'] && hash['b3'] == 1 

#      p "this is true"

#      else
#      p "this is false"    
#   end
# end

# p "winner: #{game_logic(game_board_hash)}"



p (game_board_hash['a1'] ==1 && game_board_hash['a2'] ==1 && game_board_hash['a3']) == 1 ||
  game_board_hash['b1'] ==0 && game_board_hash['b2'] ==0 && game_board_hash['b3'] == 1








