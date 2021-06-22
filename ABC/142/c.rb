n = gets.to_i
arr = gets.split.map(&:to_i)

students_order = Array.new(n, nil)

arr.each_with_index do |val, idx|
  students_order[val-1] = idx + 1
end

puts students_order.join(' ')