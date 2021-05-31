# n = gets.to_i
# arr = []
# n.times {arr << gets.strip}
# ans = 'satisfiable'

# arr.each do |a|
#   if a.chars.first == '!'
#     str = a.chars[1..(a.chars.size - 1)]
#     ans = str if arr.include?(str)
#     break
#   else
#     ans = a if arr.include?('!' + a)
#     break
#   end
# end

# puts ans

n = gets.to_i
 
arr = Array.new(n) { gets.chomp }.sort
s1, s2 = arr.partition { |s| s.include?('!') }
s1 = s1.map{|s| s.tr('!', '') }
 
s = s1 & s2
 
puts s.empty? ? 'satisfiable' : s.first