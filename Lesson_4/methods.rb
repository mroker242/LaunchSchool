game_board_hash = {'a1' => 1, 'a2' => 1, 'a3' => 1,
                   'b1' => 1, 'b2' => 2, 'b3' => 0,
                   'c1' => 0, 'c2' => 1, 'c3' => 2}

displaya = ''
displayb = ''
displayc = ''

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

end

display_board(displaya,displayb,displayc,game_board_hash)




# build 3 strings, each representing a row
# for every 1 put an x
# have to make it so that if a 2 is in there, an o will show
# works! now i will need to put this in method






    














