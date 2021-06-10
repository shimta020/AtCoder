s = gets.chomp

# 不正解(dreamとdreamerどっちで切ればいいのかが判別できていない)
# str = s.split(/(erase|dream|dreamer|eraser)/).reject(&:empty?)

# ans = 'YES'

# str.each do |x|
#   if x != 'dream' && x != 'dreamer' && x != 'erase' && x != 'eraser'
#     ans = 'NO'
#     break
#   end
# end

# puts ans

# 後ろからとっていく方法
str = s.reverse.split(/(esare|maerd|remaerd|resare)/).reject(&:empty?).map{|s| s.chomp.reverse}

ans = 'YES'

str.each do |x|
  if x != 'dream' && x != 'dreamer' && x != 'erase' && x != 'eraser'
    ans = 'NO'
    break
  end
end

puts ans