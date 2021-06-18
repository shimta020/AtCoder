n, x, t = gets.split.map(&:to_i)

if n % x == 0
  ans = (n/x)*t
else
  ans = (n/x + 1)*t
end

puts ans