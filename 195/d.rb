N, M, Q = gets.split.map(&:to_i)

n_arr = []
N.times do
  n_arr << gets.split.map(&:to_i)
end

box_arr = gets.strip.split.map(&:to_i)
box_arr.sort

reject_arr = []
Q.times do
  reject_arr << gets.split.map(&:to_i)
end

ans_1 = 0

box_arr -= box_arr[reject_arr[0][0]..reject_arr[0][1]]
box_arr_sort = box_arr.sort
n_arr_sort = n_arr.sort

(n_arr_sort.size).times do |n|
  if n_arr_sort[n][0] <= box_arr_sort[n]
    ans_1 += n_arr_sort[n][1]
  else
    break
  end
end


puts ans_1