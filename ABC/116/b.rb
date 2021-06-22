s = gets.to_i

arr = [s]

while
  if arr.last.even?
    arr << (arr.last)/2
  else
    arr << (arr.last)*3 + 1
  end
  break if arr.size - 1 == arr.uniq.size
end

puts arr.size