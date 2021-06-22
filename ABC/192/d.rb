x = gets.to_i
m = gets.to_i

max_int = x.to_s.split('').max.to_i + 1

ans = 0

(max_int..).each do |num|
  if x.to_s.to_i(num) <= m
    ans += 1
  else
    break
  end
end

puts ans