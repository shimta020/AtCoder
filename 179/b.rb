n = gets.to_i
arr = []
n.times{ arr << gets.split.map(&:to_i) }

ans = 0

arr.each_with_index do |a, key|
  if a[0] == a[1] && ans == 0
    tmp = key
    if tmp + 1 == key
      ans += 1
      tmp = key
      break if ans == 2
    else
      ans = 0
    end
  end
end

puts ans == 2 ? 'Yes' : 'No'