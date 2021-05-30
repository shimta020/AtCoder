n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
arr = []

n.times do |n|
  arr << a[n]*b[n]
end

puts arr.sum == 0 ? 'Yes' : 'No'