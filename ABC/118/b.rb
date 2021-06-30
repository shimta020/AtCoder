n, m = gets.split.map(&:to_i)
arr = []
n.times{ arr << (gets.split.map(&:to_i))[1..-1] }
ans = 0

people_num = arr.size
arr = arr.flatten.group_by(&:itself).transform_values(&:size)

arr.each do |_ ,val|
  ans += 1 if val == people_num
end

puts ans