N = gets.to_i

cnt = N.to_s.length
num_place = 0
ans = 0

3.step(15, 3) do |n|
  if cnt <= n
    num_place = n - 3
    break
  end
end

if num_place >= 6
  1.upto(num_place.div(3)-1) do |num|
    ans += 999 * num * 10**(num*3)
  end
end

ans += (N - 10**num_place + 1) * (num_place/3)

puts ans