x, k, d = gets.split.map(&:to_i)
ans = 0

x = x.abs

if x - k*d > 0
  ans = x - k*d
else
  tmp = x/d
  k -= tmp
  x -= tmp*d
  # if k.even?
  #   ans = x
  # else
  #   ans = x - d
  # end
  ans = k.even? ? x : x - d
end

puts ans.abs