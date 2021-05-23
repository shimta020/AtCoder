N = gets.to_i
arrs = []
N.times do
  arrs << gets.strip.split.map(&:to_i)
end

ans = 10**9

arrs.each do |arr|
  ans = arr[1] if arr[2] - arr[0] > 0 && ans > arr[1]
end

if ans == 10**9
  puts -1
else
  puts ans
end