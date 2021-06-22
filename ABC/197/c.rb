n = gets.to_i
arrs = gets.split.map(&:to_i)
ans = []
i = 0

if n == 1
  ans = arrs
else
  while i < (n - 1)
    a, b = arrs[0..i], arrs[i+1..n-1]
    x = a.inject(a[0]) { |result, s| result | s }
    y = b.inject(b[0]){ |result, t| result | t }
    ans << (x ^ y)
    i += 1
  end
end

puts ans.min