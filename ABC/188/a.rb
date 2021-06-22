x = gets.split.map(&:to_i)
puts x.min+3 > x.max ? 'Yes' : 'No'