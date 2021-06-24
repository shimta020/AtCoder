n, b, r = gets.split.map(&:to_i)

total = b + r

num = n/total

tmp = n%total

if tmp <= b
  mod = tmp
else
  mod = b
end

puts b*num + mod