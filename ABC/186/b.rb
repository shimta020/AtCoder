h, w = gets.split.map(&:to_i)
arr = []
h.times do
  arr << gets.split.map(&:to_i)
end

min_val = arr.flatten.min

ans = 0

arr.each do |a|
  for i in 0..(w-1)
    ans += a[i] - min_val
  end
end

puts ans