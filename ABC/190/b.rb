n ,s, d = gets.split.map(&:to_i)
arr = []
ans = 'No'
n.times do
  arr << gets.split.map(&:to_i)
end

arr.each do |a|
  ans = 'Yes' if a[0] < s && a[1] > d
end

puts ans