n = gets.to_i
s = gets.chomp.chars

tmp = 0
len = s.size - 1


(0..(len-1)).each do |x|
  arr_1 = s[0..x]
  arr_2 = s[(x+1)..len]
  common = (arr_1 & arr_2).size
  tmp = common if common > tmp
end

puts tmp