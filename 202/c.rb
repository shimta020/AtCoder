N = gets.to_i
a_s = gets.split.map(&:to_i)
b_s = gets.split.map(&:to_i)
c_s = gets.split.map(&:to_i)

ans = 0

a_s.each do |a|
  N.times do |n|
    ans += 1 if a == b_s[c_s[n]-1]
  end
end

puts ans