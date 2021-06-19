n = gets.to_i
ans = 0

(1..n).each do |x|
  if x*(x+1) >= 2*n
    ans = x
    break
  end
end

puts ans