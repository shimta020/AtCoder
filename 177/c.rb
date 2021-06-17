n = gets.to_i
arr = gets.split.map(&:to_i)
m = 10**9 + 7
ans = 0

tmp = arr.combination(2).to_a

tmp.each do |t|
  ans += (t.inject(:*))
  ans %= m
end

puts ans