n, x = gets.split(' ').map(&:to_i)
arr = gets.split(' ').map(&:to_i)
arr.delete(x)
puts arr.join(' ')