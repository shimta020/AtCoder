n = gets.to_i
arr = gets.strip.split.map(&:to_i)
ans = 0

while arr.all?(&:even?)
  arr = arr.map{ |x| x.div(2) }
  ans += 1
end

puts ans