n = gets.to_i
arr = []
n.times { arr << gets.split.map(&:to_i) }

ans = 0

# 多分TLE

# arr.each do |a|
#   ans += (a[0]..a[1]).inject(:+)
# end

# puts ans