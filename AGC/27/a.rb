n, x = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).sort
ans = 0

arr.each_with_index do |a, idx|
  if idx == n-1
    ans += 1 if x == a
  else
    ans += 1 if x >= a
  end
  x -= a
  break if x <= 0
end

puts ans