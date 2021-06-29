# s = gets.chomp.chars
# ans = 0

# TLE
# while s.join.include?('BW')
#   s.each_with_index do |val, idx|
#     if val == 'B' && s[idx + 1] == 'W'
#       s[idx] = 'W'
#       s[idx + 1] = 'B'
#       ans += 1
#     end
#   end
# end

# puts ans

# これもTLE
# s = gets.chomp
# ans = 0

# while s.include?('BW')
#   ans += s.scan(/BW/).size
#   s.gsub!('BW','WB')
# end

# puts ans

# https://kenta-s.hatenadiary.jp/entry/2018/12/16/172210

s = gets.chomp.chars

ans = 0
w_count = 0

s.each.with_index(1) do |char, idx|
  if char == 'W'
    w_count += 1
    ans += idx - w_count
  end
end

puts ans