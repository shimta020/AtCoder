n, k = gets.split.map(&:to_i)
ans = []

tmp = n/k

positive_int = n - k*tmp

ans.push(positive_int, (positive_int - k).abs)

puts ans.min