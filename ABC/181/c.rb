n = gets.to_i
arr = []
n.times { arr << gets.split.map(&:to_i) }
x = 'No'

tmp = []

arr.each do |a|
  if a[0] == 0
    l = 0
  elsif a[1] == 0
    l = 'inf'
  else
    l = a[1].to_f/a[0]
  end
  tmp << l
end

# for i in 0..(n-1)
#   ans = 0
#   for j in (i+1)..(n-1)
#     ans += 1 if tmp[i] == tmp[j]
#   end
#   if ans >= 2
#     x = 'Yes'
#     break
#   end
# end

# puts x

tmp = tmp.group_by(&:itself).transform_values(&:size)

tmp.each do |_, val|
  x = 'Yes' if val >= 3
end

puts x