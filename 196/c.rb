def counts
  x = gets.to_i
  ans = -10

  return 0 if x < 10

  x.times do |n|
    str = n.to_s.split('')
    l = str.length
    ans += 1 if str[0..l/2-1] == str[l/2..l-1]
  end
  return ans
end

puts counts