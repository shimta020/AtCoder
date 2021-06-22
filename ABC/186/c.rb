n = gets.to_i
ans = 0

1.upto(n) do |n|
  if n.to_s.include?('7') || n.to_s(8).include?('7')
    ans += 1
  end
end

puts n - ans