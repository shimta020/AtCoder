# n = gets.to_i
# arrs = gets.split.map(&:to_i)
# result = []
# arrs.each_with_index do |arr, idx|
#   i = idx + 1
#   while i <= arrs.length - 1
#     result << [idx, i] if (arr - arrs[i]) % 200 == 0
#     i += 1
#   end
# end

# puts result.length

# n = gets.to_i
# arrs = gets.split.map(&:to_i)
# result = []
# arrs.each_with_index do |arr, idx|
#   (idx + 1).upto(arrs.length - 1) do |n|
#     result << [idx, n] if (arr - arrs[n]) % 200 == 0
#   end
# end

# puts result.length

n = gets.to_i
arrs = gets.split.map(&:to_i)
result = 0
arrs.each_with_index do |arr, idx|
  (idx + 1).upto(arrs.length - 1) do |n|
    result += 1 if (arr - arrs[n]) % 200 == 0
  end
end

puts result