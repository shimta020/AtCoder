n = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0

# arr.each_with_index do |a, idx|
#   left_min_val = arr[0..(idx - 1)].min
#   ans += 1 if idx > 0 && left_min_val >= a
# end

# puts ans

min_val = arr[0]

arr.each do |a|
  if min_val >= a
    ans += 1
    min_val = a
  end
end

puts ans