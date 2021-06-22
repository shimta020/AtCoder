n, x = gets.split.map(&:to_i)
arr = gets.strip.chars

arr.each do |a|
  if a == 'o'
    x += 1
  else
    x -= 1
    x = 0 if x < 0
  end
end

puts x