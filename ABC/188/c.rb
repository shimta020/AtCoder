n = gets.to_i
arr = gets.split.map(&:to_i)
len = arr.size

left_arr = arr[0..((len/2)-1)]
right_arr = arr[(len/2)..(len-1)]

max_left_arr = left_arr.max
index_max_left_arr = arr.index(max_left_arr) + 1

max_right_arr = right_arr.max
index_max_right_arr = arr.index(max_right_arr) + 1

puts max_left_arr > max_right_arr ? index_max_right_arr : index_max_left_arr