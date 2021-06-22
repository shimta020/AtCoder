n = gets.to_i
arr = gets.split.map(&:to_i)
m = 1000000007
ans = 0

tmp = arr.combination(2).to_a

tmp.each do |t|
  x = (t.inject(:*))
  ans += x%m
end

puts ans