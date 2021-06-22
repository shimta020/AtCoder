a, b = gets.split.map(&:to_s)

num = (a + b).to_i

tmp = num**(1/2.0)

ans = tmp - tmp.to_i

puts ans == 0 ? 'Yes' : 'No'