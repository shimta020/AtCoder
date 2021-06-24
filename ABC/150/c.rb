n = gets.to_i
p_arr = gets.split.map(&:to_i)
q_arr = gets.split.map(&:to_i)

ans = 0
tmp = []

all_per = (1..n).to_a.permutation(n).to_a

if p_arr != q_arr
  all_per.each_with_index do |a, idx|
    tmp << idx if a == p_arr || a == q_arr
  end
  ans = (tmp[1] - tmp[0]).abs
end

puts ans