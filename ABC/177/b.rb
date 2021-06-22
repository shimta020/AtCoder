s = gets.chomp.chars
t = gets.chomp.chars
tmp = 0
arr = []

tail = s.size - t.size

(0..tail).each do |x|
  (0..(t.size - 1)).each do |y|
    tmp += 1 if s[x + y] == t[y]
  end
  arr << tmp
  tmp = 0
end

ans = t.size - arr.max

puts ans