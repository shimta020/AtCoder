n = gets.to_i
arr = gets.split.map(&:to_i)

ans = 0

arr.each do |a|
  ans += a - 10 if a > 10
end

puts ans