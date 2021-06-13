n = gets.to_i
arr = gets.split.map(&:to_i)

puts (1..n).to_a == arr.sort ? 'Yes' : 'No'