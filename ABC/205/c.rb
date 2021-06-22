arr = gets.split.map(&:to_i)
a = arr[0]
b = arr[1]

if arr[2].odd?
  if a == b
    puts '='
  elsif a > b
    puts '>'
  else
    puts '<'
  end
else
  if a.abs == b.abs
    puts '='
  elsif a.abs > b.abs
    puts '>'
  else
    puts '<'
  end
end