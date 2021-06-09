a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

c_500 = [x/500, a].min
c_100 = [x/100, b].min
c_50 = [x/50, c].min

ans = 0

for i in 0..c_500
  for j in 0..c_100
    for k in 0..c_50
      ans += 1 if 500*i + 100*j + 50*k == x
    end
  end
end

puts ans