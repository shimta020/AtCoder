n, m = gets.split.map(&:to_i)
arr = []
m.times{ arr << gets.split.map(&:to_i) }

len = arr.size - 1
tmp = (arr[0][0]..arr[0][1]).to_a

1.upto(len) do |i|
  tmp &= (arr[i][0]..arr[i][1]).to_a
  break if tmp.size == 0
end

puts tmp.size