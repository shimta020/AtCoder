n = gets.to_i
d, x = gets.split.map(&:to_i)
arr = []
n.times{ arr << gets.to_i }

ans = x

arr.each do |a|
  ans += (d - 1+ a)/a
end

puts ans