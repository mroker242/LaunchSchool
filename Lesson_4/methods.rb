game_board_hash = {'a1' => 1, 'a2' => 1, 'a3' => 2,
                   'b1' => 2, 'b2' => 1, 'b3' => 1,
                   'c1' => 1, 'c2' => 1, 'c3' => 1}



def computer_choice(game_board_hash)
  computer_choice = rand(game_board_hash.length) - 1
  output = game_board_hash.keys[computer_choice]
end


p computer_choice = computer_choice(game_board_hash)


















