n = gets.to_i
arr = gets.split.map(&:to_i).sort

len = arr.size

num_1 = arr[(len/2)-1]
num_2 = arr[len/2]

puts num_2 - num_1