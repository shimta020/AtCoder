d, t, s =gets.split.map(&:to_i)

puts (t - (d.to_f/s)) >= 0 ? 'Yes' : 'No'