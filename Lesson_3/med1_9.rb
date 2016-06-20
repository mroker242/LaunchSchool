def titleize!(title)
  title = title.split(' ')
  title.each do |s|
    s.capitalize!
  end
  title = title.join(" ")
end

p titleize!("mary had a little lamb")