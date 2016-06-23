def UUID_generate()

  arr1 = ('a'..'z').to_a
  arr2 = (1..9).to_a
  arr3 = arr1.concat(arr2)

  arr3.shuffle!

  arr3.slice!(27,7)

  arr3.insert(8,'-').insert(13, '-').insert(18,'-')

  uuid_string = arr3.join('')

  p uuid_string

end

UUID_generate()
