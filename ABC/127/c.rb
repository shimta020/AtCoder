n, m = gets.split.map(&:to_i)
arr = []
m.times{ arr << gets.split.map(&:to_i) }

# TLE
# len = arr.size - 1
# tmp = (arr[0][0]..arr[0][1]).to_a

# 1.upto(len) do |i|
#   tmp &= (arr[i][0]..arr[i][1]).to_a
#   break if tmp.size == 0
# end

# puts tmp.size

len = arr.size - 1
head = 0
tail = 10**5

(0..len).each do |i|
  # p head
  # p tail
  head = arr[i][0] if head <= arr[i][0]
  tail = arr[i][1] if tail >= arr[i][1]
  # p head
  # p tail
  # puts '-------------'
  break if head == tail
end

puts tail - head + 1