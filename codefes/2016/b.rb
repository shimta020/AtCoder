n, a, b = gets.split.map(&:to_i)
arr = gets.chomp.chars

limit = a + b

total = 0
sum_a = 0
sum_b = 0

result = arr.map do |x|
  if x == 'a'
    if total < limit && sum_a < limit
      total += 1
      sum_a += 1
      'Yes'
    else
      'No'
    end
  elsif x == 'b'
    if total < limit && sum_b < b
      total += 1
      sum_b += 1
      'Yes'
    else
      'No'
    end
  else
    'No'
  end
end

puts result