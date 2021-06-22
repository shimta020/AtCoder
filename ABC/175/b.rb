n = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0

comb_arr = (0..(n-1)).to_a.combination(3).to_a

comb_arr.each do |x|
  tmp = [arr[x[0]], arr[x[1]], arr[x[2]]]
  condition_1 = (tmp.uniq == tmp)
  condition_2 = ((tmp - [tmp.max]).sum - tmp.max) > 0
  if condition_1 && condition_2
    ans += 1
  end
end

puts ans