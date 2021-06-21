n, m, c = gets.split.map(&:to_i)

b_arr = gets.split.map(&:to_i)

a_arr = []
n.times { a_arr << gets.split.map(&:to_i) }

ans = 0

def sample(arr_1, arr_2, len)
  result = 0
  (0..(len-1)).each do |n|
    result += arr_1[n] * arr_2[n]
  end
  result
end

a_arr.each do |a|
  ans += 1 if sample(a, b_arr, m) + c > 0
end

puts ans