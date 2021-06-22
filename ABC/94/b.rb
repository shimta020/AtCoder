n, m, x = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

left = []

arr.each do |a|
  x > a ? left << a : break
end

right = (arr - left).size
left = left.size

puts [left, right].min