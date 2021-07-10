n, x = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

arr = arr.map.with_index do |a, idx|
  if idx.odd?
    a - 1
  else
    a
  end
end

total = arr.sum

puts x >= total ? 'Yes' : 'No'