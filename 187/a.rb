a, b = gets.split

s_a = a.chars.map(&:to_i).sum
s_b = b.chars.map(&:to_i).sum

puts s_a >= s_b ? s_a : s_b