#two.rb 


def all_caps(words)
  #return call caps
  
  if words.length > 10
   words = words.upcase
   puts words
 else
  puts words
  end 
end


all_caps('michael')
all_caps('michael roker')