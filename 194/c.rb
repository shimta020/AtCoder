# n = gets.to_i
# arr = gets.strip.split.map(&:to_i)
# num = arr.length-1
# ans = 0

# 0.upto(num-1) do |i_1|
#   (i_1+1).upto(num) do |i_2|
#     ans += (arr[i_2]-arr[i_1])**2
#   end
# end

# puts ans

n = gets.to_i
a = []
a = gets.split.map(&:to_i)
 
# aの累積和を計算
s = []
s[0] = -2*a[0]
(n-1).times do |i|
  s[i+1] = s[i] - 2*a[i+1]
end
 
ans = 0
 
n.times do |i|
  if i == 0
    ans += (n-1) * (a[i]**2)
  else
    ans += a[i] * (s[i-1] + (n-1) * a[i])
  end
end
puts ans