d, t, s =gets.split.map(&:to_i)

puts (t - (d/s)) >= 0 ? 'Yes' : 'No'