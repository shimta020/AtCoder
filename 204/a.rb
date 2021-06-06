x = gets.split.map(&:to_i)
hands = [0, 1, 2]

if x.uniq.size == 1
  puts x[0]
else
  puts hands - x
end