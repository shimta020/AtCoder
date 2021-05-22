# N = gets.to_i
# a_s = gets.split.map(&:to_i)
# b_s = gets.split.map(&:to_i)
# c_s = gets.split.map(&:to_i)

# ans = 0

# timeout
# a_s.each do |a|
#   N.times do |n|
#     ans += 1 if a == b_s[c_s[n]-1]
#   end
# end

# puts ans

N = gets.to_i
a_s = gets.split.map(&:to_i)
b_s = gets.split.map(&:to_i)
c_s = gets.split.map(&:to_i)

ans = 0

b_c = []
N.times do |n|
  b_c << b_s[c_s[n]-1]
end

result_a = Array.new(N, 0)
a_s.each do |n|
  result_a[n-1] += 1
end

result_bc = Array.new(N, 0)
b_c.each do |n|
  result_bc[n-1] += 1
end

N.times do |n|
  ans += result_a[n] * result_bc[n]
end

puts ans