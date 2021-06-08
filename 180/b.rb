n = gets.to_i
arr = gets.split.map(&:to_i)

a = arr.inject{|result, x| result + x.abs}

b = arr.inject(0){|result, y| result + y*y}**0.5

c = arr.map(&:abs).max

puts a, b, c