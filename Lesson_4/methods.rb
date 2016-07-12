Say who plays first

- use a gets to determine who plays first
- when this choice is made, a method is made so that whichever one is chosen, player plays or computer plays


- there are two methods: player_places_piece, computer_places_piece
- find a method that says determines which one will go first
- create method that the output is player or computer
- if player, then player places piece first
- if computer, then computer places piece first

- if answer, then call method player_places_piece, otherwise call computer



 player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    computer_places_piece!(board)

    break if someone_won?(board) || board_full?(board)


- you keep letting players play until something happens
- player plays, break if the board is full or someone wins
- computer plays, break if someone wins or board is full

- if choice is player, player plays method. Then computer plays method is called


if who_plays_first ==  'player'
  player_places_piece!(board)
  break if someone_won?(board) || board_full?(board)
  computer_places_piece!(board)
  break if someone_won?(board) || board_full?(board)
else
  computer_places_piece!(board)
  break if someone_won?(board) || board_full?(board)
  player_places_piece!(board)
  break if someone_won?(board) || board_full?(board)
end


















