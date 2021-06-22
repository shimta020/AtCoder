n = gets.to_i
arr = gets.split.map(&:to_i).sort

while arr.size != 1
  min_1 = arr[0]
  min_2 = arr[1]
  arr.shift(2)
  arr.push((min_1 + min_2)/2.0)
  arr = arr.sort
end

puts arr