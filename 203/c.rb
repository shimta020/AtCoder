n, k = gets.split.map(&:to_i)
arr = []
n.times do
  arr << gets.split.map(&:to_i)
end
arr = arr.sort

ans = k
arr.each do |a|
  if ans >= a[0]
    ans += a[1]
  else
    break
  end
end

puts ans