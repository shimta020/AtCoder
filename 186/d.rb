n = gets.to_i
arr = gets.split.map(&:to_i)

ans = 0
for x in 0..(n-1)
  for y in x..(n-1)
    ans += (arr[x] - arr[y]).abs
  end
end

puts ans