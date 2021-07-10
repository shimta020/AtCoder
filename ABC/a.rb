a, b = gets.split.map(&:to_i)
num = (b - a)
puts num >= 0 ? num + 1 : 0