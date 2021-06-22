n = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0

first_arr = arr[0..((n/2)-1)]

if arr.size.even?
  last_arr = arr[(n/2)..(n-1)].reverse
else
  last_arr = arr[((n/2)+1)..(n-1)].reverse
end

arr_size = first_arr.size

# p first_arr
# p last_arr

while first_arr != last_arr
  (0..arr_size).each do |x|
    if first_arr[x] != last_arr[x]
      trans_val = first_arr[x]
      target_val = last_arr[x]
      first_arr = first_arr.map do |y|
        # next y if y != target_val
        # y = trans_val
        y == target_val ? trans_val : y
      end
      last_arr = last_arr.map do |z|
        # next z if z != target_val
        # z = trans_val
        z == target_val ? trans_val : z
      end
      ans += 1
    end
    p first_arr
    p last_arr
    break
  end
end

puts ans