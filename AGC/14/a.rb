a, b, c = gets.split.map(&:to_i)
ans = 0

while [a, b, c].all?(&:even?)
  if [a/2, b/2, c/2].all?(&:odd?) || (a == b) && (b== c)
    ans = -1
    break
  else
    tmp = [a, b, c]
    a = (tmp[1] + tmp[2])/2
    b = (tmp[0] + tmp[2])/2
    c = (tmp[0] + tmp[1])/2
    ans += 1
  end
end

puts ans