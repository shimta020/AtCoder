n = gets.to_i
s = gets.chomp.chars

# 最後のIまでの文字列を取る
# s = s.scan(/\w+I/)

tmp = 0
ans = [0]

# s = s.map{|s| s == 'I' ? 1 : 0}

s.each do |s|
  tmp += s == 'I' ? 1 : -1
  ans << tmp
end

puts ans.max