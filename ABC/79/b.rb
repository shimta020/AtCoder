n = gets.to_i

arr = []
arr.push(2, 1)

85.times{ arr << arr[-1] + arr[-2] }

puts arr[n]