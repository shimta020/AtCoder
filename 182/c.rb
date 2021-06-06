n, k = gets.split.map(&:to_i)
arr = []
n.times do
  arr << gets.split.map(&:to_i)
end

ans = 0

tmp = (1..(n-1)).to_a
permutations = tmp.permutation.to_a.map{ |t| t.push(0).unshift(0)}

permutations.each do |per|
  sum = 0
  n.times { |i| sum += arr[per[i]][per[i+1]] }
  ans += 1 if sum == k
end

puts ans