n = gets.to_i
arr = gets.split.map(&:to_i)

ans = 0

# for x in 0..(n-1)
#   for y in x..(n-1)
#     ans += (arr[x] - arr[y]).abs
#   end
# end


# arrを降順にすればabsメソッドをn**2回実行するのを減らせる
# arr = arr.sort.reverse
# for x in 0..(n-1)
#   for y in x..(n-1)
#     ans += arr[x] - arr[y]
#   end
# end


arr = arr.sort

for i in 1..(n-1)
  ans += i*arr[i] - arr[0..i-1].inject(:+)
end

puts ans