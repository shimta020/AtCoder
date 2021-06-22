gets
arr = gets.split.map(&:to_i)

max_val = 0
ans = 0

arr.each do |a|
  if max_val >= a
    ans += max_val - a
  else
    max_val = a
  end
end

puts ans