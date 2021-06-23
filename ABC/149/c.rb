require 'prime'
x = gets.to_i

# arr = Prime.each(10**5).to_a
# ans = 0

# arr.each do |a|
#   if x <= a
#     ans = a
#     break
#   end
# end

# puts ans

(x..).ach do |i|
  if i.prime?
    puts i
    exit
  end
end