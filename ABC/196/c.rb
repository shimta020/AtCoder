# def counts
#   x = gets.to_i
#   ans = -10

#   return 0 if x < 10

#   x.times do |n|
#     str = n.to_s.chars
#     l = str.length
#     ans += 1 if str[0..l/2-1] == str[l/2..l-1]
#   end
#   return ans
# end

# puts counts

# x = gets.to_i
# str = x.to_s
# len = str.length
# arrs = [9,99,999,9999,99999,999999]
# ans = 0

# 1.step(11, 1) do |n|
#   ans = arrs[n] if x >= 10**n && 10**(n+1) > x
# end

# if len.odd?
#   puts ans
# else
#    = 
# end


# ans = 9 * (10**(n-2))

n = gets.to_i
cnt = 0
while true
  break if n < (cnt.to_s + cnt.to_s).to_i
  cnt += 1
end

puts cnt - 1

# もしくはAAABBB、つまりAAA = BBBとなればいいのでAAAが100~999となる数を数えればいい

str = gets.chomp

if str.length < 2
  puts 0
  exit 0
end

center = str.length/2

if str.length.modulo(2) == 0
  pre_str = str[0..(center-1)]
  post_str = str[center..(str.length-1)]
else
  pre_str = str[0..center]
  pre_str = 10 ** (pre_str.length - 1)
  post_str = str[(center+1)..(str.length-1)]
end

if pre_str.to_i <= post_str.to_i
  puts pre_str.to_i
else
  puts pre_str.to_i - 1
end