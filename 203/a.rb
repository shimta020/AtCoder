arr = gets.split.map(&:to_i)
ans = nil

if arr.uniq.size == 3
  ans = 0
elsif arr.uniq.size == 1
  ans = arr[0]
else
  ans_hash = arr.group_by(&:itself).transform_values(&:size)
  ans = ans_hash.invert[1]
end

puts ans