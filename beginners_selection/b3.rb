n, a, b = gets.split.map(&:to_i)
ans = 0

(1..n).each do |x|
  tmp = x.digits.sum
  ans += x if tmp >= a && tmp <= b
end

puts ans