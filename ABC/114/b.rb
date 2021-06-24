s = gets.chomp

len = s.length

ans = 10**3

(0..(len-3)).each do |i|
  tmp = (753 - s.slice(i..(i+2)).to_i).abs
  ans = tmp if ans > tmp
end

puts ans