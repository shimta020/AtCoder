n = gets.strip.chars
if n.last == 's'
  puts (n + ['es']).join
else
  puts (n + ['s']).join
end