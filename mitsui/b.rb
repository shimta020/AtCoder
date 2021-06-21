n = gets.to_i

tmp = (n/1.08).to_i

if (tmp*1.08).to_i == n
  puts tmp
elsif ((tmp+1)*1.08).to_i == n
  puts tmp + 1
else
  puts ':('
end


# こんなんでもいい
# n = gets.chomp.to_i

# x = (n / 1.08).ceil

# puts (x * 1.08).floor == n ? x : ':('