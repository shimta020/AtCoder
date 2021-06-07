n = gets.to_i
arr = []
n.times { arr << gets.split.map(&:to_i) }

ans = 0

# 多分TLE

# arr.each do |a|
#   ans += (a[0]..a[1]).inject(:+)
# end

# puts ans

arr.each do |a|
  ans += ((a[1] - a[0] + 1)*(a[0] + a[1]))/2
end

puts ans