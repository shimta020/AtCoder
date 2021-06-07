n, m = gets.split.map(&:to_i)
arr = []
m.times { arr << gets.split.map(&:to_i) }

ans = n

for a in 0..(n-1)
  tmp = arr[a]
  for b in (a+1)..(n-1)
    tmp.push(arr[b][1]) if tmp.last == arr[b][0]
  end
  p tmp.uniq
  ans += tmp.uniq.size - 1
end

puts ans