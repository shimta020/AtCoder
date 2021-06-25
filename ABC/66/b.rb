s = gets.chomp.chars

while s.size > 0
  len = s.size
  s.pop
  if s[0..(len/2 - 1)] == s[(len/2)..(len-1)]
    puts s.size
    exit
  end
end