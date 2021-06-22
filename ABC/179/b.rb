n = gets.to_i
arr = []
n.times{ arr << gets.split.map(&:to_i) }

ans = 0
tmp = 0

arr.each_with_index do |a, key|
  if a[0] == a[1]
    if tmp == 0
      tmp = key + 1
    elsif tmp >= 1
      tmp = key + 1
      ans += 1
      break if ans == 2
    end
  else
    tmp = 0
    ans = 0
  end
end

puts ans == 2 ? 'Yes' : 'No'