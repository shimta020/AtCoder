n = gets.to_i
arr = []
n.times{ arr << gets.to_i }

# TLE
# ans = []
# n.times do |i|
#   ans << (arr - [arr[i]]).max
# end

# puts ans

# max_val = arr.max
# arr.uniq.size > 1 ? second_val = (arr - [arr.max]).max : second_val = max_val

# ans = arr.map do |i|
#   i == max_val ? second_val : max_val
# end

# puts ans

max_val, second_val = arr.max(2)

puts arr.map{ |i| i == max_val ? second_val : max_val }