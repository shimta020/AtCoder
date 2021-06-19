n = gets.to_i
arr = gets.split.map(&:to_i)

p arr.combination(2).to_a.select{ |a,b| a != b}.size