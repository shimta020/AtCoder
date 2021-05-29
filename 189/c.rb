n = gets.to_i
arr = gets.split.map(&:to_i)
len = arr.size - 1
tmp_arr = []
tmp_ans = 0

n.times do |n|
  n.upto(len) do |i|
    if arr[n] <= arr[i]
      tmp_ans += arr[n]
    else
      break
    end
  end
  tmp_arr << tmp_ans
  tmp_ans = 0
end

puts tmp_arr.max