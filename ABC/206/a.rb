n = gets.to_i

price = (n * 1.08).to_i

if price < 206
  puts 'Yay!'
elsif price == 206
  puts 'so-so'
else
  puts ':('
end