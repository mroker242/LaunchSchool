#one.rb Find 'lab' in the following words


def has_lab(string)
  if string =~ /lab/
    puts string
  else
   puts  "No match here"
  end
end



has_lab('laboratory')
has_lab('experiment')
has_lab('Pans Labyrinth')
has_lab('pola bear')
